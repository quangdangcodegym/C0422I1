package com.codegym.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.codegym.model.User;

public class UserDAO implements IUserDAO {
    private static final String INSER_USER_SP_SQL = "call px_usermanager.sp_insert_user(?, ?, ?, ?, ?, ?, ?);";
    private String jdbcURL = "jdbc:mysql://localhost:3306/px_usermanager?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "Quangdv180729!!";

    private static final String INSERT_USERS_SQL = "INSERT INTO users" + "  (name, email, idcountry) VALUES " +
            " (?, ?, ?);";

    private static final String SELECT_USER_BY_ID = "select id,name,email,idcountry from users where id =?";
    private static final String SELECT_ALL_USERS = "select * from users";
    private static final String DELETE_USERS_SQL = "delete from users where id = ?;";
    private static final String UPDATE_USERS_SQL = "update users set name = ?,email= ?, idcountry =? where id = ?;";
	private static final String SELECT_USER_BY_EMAIL = "select u.id,u.name,u.email, u.idcountry\r\n"
			+ "    		 from users as u inner join country as c\r\n"
			+ "    		where u.email = ? and u.idcountry = c.id;";

    public UserDAO() {
    }

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return connection;
    }

    public User selectUserByEmail(String _email) {
    	User user = null;
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();
             // Step 2:Create a statement using connection object
        		//SELCT_USER_BY_EMAIL = "select id,name,email from users where email = ?";
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_EMAIL);) {
            preparedStatement.setString(1, _email);
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
            	int id  = rs.getInt("id");
                String name = rs.getString("name");
                String email = rs.getString("email");
                int idCountry = rs.getInt("idcountry");
                user = new User(id, name, email, idCountry, "123123");
                
                return user;
            }
            return null;
        } catch (SQLException e) {
        	printSQLException(e);
        	return null;
            
        }

    }
	public void insertUser(User user) throws SQLException {
		
		
		
		System.out.println(INSERT_USERS_SQL);
		// try-with-resource statement will auto close the connection.
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
			
//			Statement // Không có tham so
//			PreparedStatement // Co tham số, bắt đầu từ 1, 2 , 3...
//			CallableStatement // Làm việc với store procedure
//			
			
			preparedStatement.setString(1, user.getName());
			preparedStatement.setString(2, user.getEmail());
			preparedStatement.setInt(3, user.getIdcountry());
			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
			
			

		} catch (SQLException e) {
			printSQLException(e);
		}
	}

    @Override
    public boolean insertUserSP(User user) throws SQLException {
        Connection connection = null;
        try{
            connection = getConnection();
            CallableStatement callableStatement = connection.prepareCall(INSER_USER_SP_SQL);
            //"{ call px_usermanager.sp_insert_user(?, ?, ?, ?, ?, ?, ?);}";
            callableStatement.setString(1, user.getName());
            callableStatement.setString(2, user.getEmail());
            callableStatement.setInt(3, user.getIdcountry());
            callableStatement.setString(4, user.getPassword());
            callableStatement.setString(5, null);

            callableStatement.registerOutParameter(6, Types.VARCHAR);
            callableStatement.registerOutParameter(7, Types.BOOLEAN);

            System.out.println(this.getClass() + " insertUserSP: " + callableStatement);
            callableStatement.execute();
            
            String message = callableStatement.getString(6);
            boolean check = callableStatement.getBoolean(7);
            
            
            
            return  check;
        }catch (SQLException e){
            printSQLException(e);
        }finally {
            connection.close();
        }
        return false;
    }

    public User selectUser(int id) {
        User user = null;
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();
             // Step 2:Create a statement using connection object
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_ID);) {
            preparedStatement.setInt(1, id);
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                String name = rs.getString("name");
                String email = rs.getString("email");
                int idcountry = Integer.parseInt(rs.getString("idcountry"));
                user = new User(id, name, email, idcountry, "123123");
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return user;
    }

    public List<User> selectAllUsers() {

        // using try-with-resources to avoid closing resources (boiler plate code)
        List<User> users = new ArrayList<>();
        // Step 1: Establishing a Connection
        try (Connection connection = getConnection();

             // Step 2:Create a statement using connection object
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_USERS);) {
            System.out.println(this.getClass() + " selectAllUsers() + statement: " + preparedStatement);
            // Step 3: Execute the query or update query
            ResultSet rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String email = rs.getString("email");
                int idcountry = Integer.parseInt(rs.getString("idcountry"));
                users.add(new User(id, name, email, idcountry, "123123"));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return users;
    }

    public boolean deleteUser(int id) throws SQLException {
        boolean rowDeleted;
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(DELETE_USERS_SQL);) {
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        }
        return rowDeleted;
    }

    public boolean updateUser(User user) throws SQLException {
        boolean rowUpdated;
        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(UPDATE_USERS_SQL);) {
            statement.setString(1, user.getName());
            statement.setString(2, user.getEmail());
            statement.setInt(3, user.getIdcountry());
            statement.setInt(4, user.getId());

            rowUpdated = statement.executeUpdate() > 0;
        }
        return rowUpdated;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }

}

/**
Thêm xóa sửa cấu trúc:
 + tên cột, kiểu dữ liệu, ràng buộc (not null, unique, index?, primary key,
 default, check, khóa ngoại)
 
Unique: Không trùng lặp, cho phép null
Primary key: Không trùng lặp, not null
Khóa ngoại - foreign key:

Create/update/drop/delete
SQL query:


function mysql
**/
select z.class_id, IFNULL(ctable.c, 0) as countsv
from zalo as z left join (
	SELECT class_id, count(test_score) as c
	FROM quanlysinhvien.zalo
	where test_score >= 8
	group by class_id
) as ctable on z.class_id = ctable.class_id
group by class_id;


# Tao function trong mysql
SET GLOBAL log_bin_trust_function_creators = 1;
DELIMITER $$
create function mysum(a Integer, b Integer)
returns Integer
begin 
	declare c Integer;
    declare sum Integer;
    set c = 2;
    if(a>10 || b >10) then
		set sum = a + b;
        set sum = sum*c;
	else 
		set sum = a +b;
    end if;
    return sum;
end; $$

##############################################
delimiter $$
create procedure sp_insertstudent(
	IN sName varchar(50),
    IN sAddress varchar(50),
    IN sPhone varchar(50),
    IN sStatus boolean,
    IN sClassID int, 
    IN sAge int,
    OUT sCheck boolean,
    OUT message varchar(50)
)
begin
	INSERT INTO `quanlysinhvien`.`student` (`StudentName`, `Address`, `Phone`, `Status`, `ClassId`, `age`) 
    VALUES (sName, sAddress, sPhone, sStatus, sClassID , sAge);
    set message = "Thêm thành công";
end; $$

# tạo procedure sp_them student có dieu kien

delimiter $$
create procedure sp_insertStudent1(
	IN sName varchar(50),
    IN sAddress varchar(50),
    IN sPhone varchar(50),
    IN sStatus boolean,
    IN sClassID int, 
    IN sAge int,
    OUT sCheck boolean,
    OUT message nvarchar(250)
)
begin
	# Kiem tra so dien thoai co ton tai hay chua
    set sCheck = true;
    set message = "";
    if(exists (SELECT * FROM quanlysinhvien.student where phone = sPhone)) then
		set sCheck = false;
		set message = "Số điện thoại đã tồn tại";
    end if;
    # Kiêm tra tuổi >= 15
    if(sAge <= 15 ) then
		set sCheck = false;
		set message = CONCAT(message, "\r\n", "Chưa đủ tuổi");
    end if;
    if(sCheck = true) then
		INSERT INTO `quanlysinhvien`.`student` (`StudentName`, `Address`, `Phone`, `Status`, `ClassId`, `age`) 
		VALUES (sName, sAddress, sPhone, sStatus, sClassID , sAge);
        set message = "Thêm thành công";
    end if;
end;


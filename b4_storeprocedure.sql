sp_insert_user#
delimiter //
create PROCEDURE sp_insert_user(
    IN sName varchar(120),
    IN sEmail varchar(220),
    IN sIdCountry integer,
    IN sPassword varchar(200),
    IN sUrlImage varchar(200),
    
    OUT message varchar(200),
    OUT success boolean
)
Begin
	set success = true;
	if(! exists (SELECT * FROM px_usermanager.country where id = sIdCountry)) then
		set message = 'ID country chua ton tai';
        set success = false;
	else
		INSERT INTO `px_usermanager`.`users` (`name`, `email`, `idcountry`, `password`, `urlimage`) 
        VALUES (sName, sEmail, sIdCountry, sPassword, sUrlImage);

    end if;

end;
//

#HCACH SU DUNG TRANSACTION TRONG MYSQL
DELIMITER //
CREATE PROCEDURE test_transaction()
BEGIN

DECLARE exit handler for sqlexception
  BEGIN
    -- ERROR
    select ('transaction error');
  ROLLBACK;
END;

START TRANSACTION;
	INSERT INTO `px_usermanager`.`country` (`id`, `name`) VALUES ('20', 'Italia');
	INSERT INTO `px_usermanager`.`country` (`id`, `name`) VALUES ('1', 'Tan Ban Nha');

COMMIT;
END //
DELIMITER ;
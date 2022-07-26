/**
toan tu like: % lay bat ky ki tu, _ dai dien 1 ki tu
Logical Operators: 
 - all/any lay tat ca di vs cau subquery
 - in lay trong danh sach list of expressions
 - exists: kiem tra ton tai, tra ve true neu subquery tra 1 hoac nhieu dong

**/
/**
CAU LENH JOIN
LEFT JOIN: 
LEFT JOIN trong SQL là kiểu JOIN trả về tất cả các bản ghi từ bảng bên trái (bảng 1) 
và các bản ghi phù hợp từ bảng bên phải (bảng 2). Nếu mệnh đề ON không khớp với bản ghi nào
trong bảng bên phải thì LEFT JOIN sẽ vẫn trả về một hàng trong kết quả, nhưng giá trị là NULL trong mỗi cột từ bảng bên phải
select * 
from class s left join student c on s.ClassId = c.ClassId;

**/




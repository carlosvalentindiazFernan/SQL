create table TRIANGLES (
	A int,
	B int,
	C int 
);

insert into TRIANGLES values(10, 10, 10); 
insert into TRIANGLES values(11, 11, 11); 
insert into TRIANGLES values(30, 32, 30); 
insert into TRIANGLES values(40, 40, 40); 
insert into TRIANGLES values(20, 20, 21); 
insert into TRIANGLES values(21, 21, 21); 
insert into TRIANGLES values(20, 22, 21); 
insert into TRIANGLES values(20, 20, 40); 
insert into TRIANGLES values(20, 22, 21); 
insert into TRIANGLES values(30, 32, 41); 
insert into TRIANGLES values(50, 22, 51); 
insert into TRIANGLES values(20, 12, 61); 
insert into TRIANGLES values(20, 22, 50); 
insert into TRIANGLES values(50, 52, 51); 
insert into TRIANGLES values(80, 80, 80);




select 
	case
    WHEN A = B AND B = C then "Equilateral"
    WHEN (A + B <= C) or(A + C <= B ) or (B + C <= A) then "Not A Triangle"
    WHEN (A = B AND A != C )  or (A = C AND A != B) or (B = C AND A != B) then "Isosceles"
    ELSE "Scalene"

	end
from TRIANGLES;

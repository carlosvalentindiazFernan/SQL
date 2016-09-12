drop  procedute if existis nueco;
delimiter //;
create procedure nueco( )
begin
declare a,b,c,d,e int default 0;
declare done boolean  default 0;
declare cont int default 1;

declare nuevo1 cursor for select a1,b1,c1,d1,e1 from nuevo1;
declare continue handler for SQLSTATE'02000' set done =1;


open nuevo1;
fetch nuevo1 into a,b,c,d,e;
SET cont =a;
repeat
while cont <10000000 do
SET cont= cont +1;
insert into nuevo2 values (cont,b,c,d,e);
	end while;
	fetch nuevo1 into a,b,c,d,e;
	until done end repeat;
	close nuevo1;
	end ;
	//;
create table TRIANGLES (
	A int,
	B int,
	C int 
);






select 
	case
    WHEN A = B AND B = C then "Equilateral"
    WHEN (A + B <= C) or(A + C <= B ) or (B + C <= A) then "Not A Triangle"
    WHEN (A = B AND A != C )  or (A = C AND A != B) or (B = C AND A != B) then "Isosceles"
    ELSE "Scalene"

	end
from TRIANGLES;

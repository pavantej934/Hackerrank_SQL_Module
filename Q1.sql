Select CASE 
WHEN
A+B > C AND B+C > A AND A+C > B
THEN CASE
WHEN A=B and B=C
then "Equilateral"
WHEN (A=B or B=C or C=A)
then "Isosceles"
ELSE "Scalene"
end
ELSE "Not A Triangle"
end
from TRIANGLES;
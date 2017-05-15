Select Temp.Company_Code, Temp.Founder, Count(Distinct Lead_Manager_Code), Count(Distinct Senior_Manager_Code), Count(Distinct Manager_Code), Count(Distinct Employee_Code)
from 
(select A.*, B.Lead_Manager_Code, C.Senior_Manager_Code, D.Manager_Code, E.Employee_Code
from Company A, Lead_Manager B, Senior_Manager C, Manager D, Employee E 
where A.Company_Code = B.Company_Code and
B.Lead_Manager_Code = C.Lead_Manager_Code and
C.Senior_Manager_Code = D.Senior_Manager_Code and
D.Manager_Code = E.Manager_Code) as Temp
Group by Temp.Company_Code,Temp.Founder
Order by Temp.Company_Code;
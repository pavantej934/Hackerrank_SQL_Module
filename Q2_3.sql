select [Doctor],[Professor],[Singer],[Actor]
from 
(select *, row_number() over (partition by Occupation Order by Name) as Rownumber from Occupations) as RN
PIVOT (max(name) for Occupation in ([Doctor],[Professor],[Singer],[Actor])) as Pivot_table;
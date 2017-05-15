select * from
(select n,
case 
when p is null then "Root"
else
case 
when n in (select distinct p from BST) then "Inner"
else "Leaf"
end
end as final_result
from BST) as T
Order by T.n;
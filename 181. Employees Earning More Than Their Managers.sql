SELECT
	A.Name
FROM
	Employee A
	JOIN Employee B ON (A.ManagerID = B.ID)
WHERE
	A.Salary > B.Salary;
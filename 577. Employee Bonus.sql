SELECT
	e.name,
	b.bonus
FROM
	Employee e
	LEFT JOIN Bonus b USING (empID)
WHERE
	b.bonus < 1000
	OR b.bonus IS NULL;
SELECT
	A.FirstName,
	A.LastName,
	B.City,
	B.State
FROM
	PERSON A
	LEFT JOIN ADDRESS B USING (PersonID);
-- 1.Subquery
SELECT
	Email
FROM (
	SELECT
		Email,
		count(*) AS EmailCount
	FROM
		Person
	WHERE
		EmailCount > 1
	GROUP BY
		Email);

-- 2.HAVING
SELECT
	Email
FROM
	Person
GROUP BY
	Email
HAVING
	COUNT(Id) > 1;
SELECT DISTINCT
	a.id
FROM
	cinema AS a
	JOIN cinema AS b ON ABS(a.id - b.id) = 1
		AND a.free = TRUE
		AND b.free = TRUE
	ORDER BY
		a.id;
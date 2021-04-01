SELECT
	x,
	y,
	z,
	CASE WHEN (x + y > z)
		AND(x + z > y)
		and(y + z > x) THEN
		'yes'
	ELSE
		'no'
	END AS triangle
FROM
	triagnle;
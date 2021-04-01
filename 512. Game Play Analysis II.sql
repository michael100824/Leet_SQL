SELECT
	a.player_id,
	a.device_id
FROM
	activity a
	JOIN b (
		SELECT
			player_id,
			min(event_date) AS first_login
		FROM
			activity
		GROUP BY
			player_id) AS b ON (a.player_id = b.player_id
		AND a.event_date = b.first_login)
ORDER BY
	a.player_id
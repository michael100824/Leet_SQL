SELECT
	player_id,
	min(event_date)
FROM
	activity
GROUP BY
	player_id
ORDER BY
	player_id;
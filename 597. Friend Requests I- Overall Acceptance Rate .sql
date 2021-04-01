SELECT
	ROUND(ISNULL(
			SELECT
				count(*)
				FROM ( SELECT DISTINCT
						requester_id, accepter_id FROM request_accepted) /
					SELECT
						COUNT(*)
						FROM ( SELECT DISTINCT
								sender_id, send_to_id FROM friend_request), 0), 2) AS accpet_rate;
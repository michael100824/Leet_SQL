DELETE FROM person p1
WHERE Id in(
		SELECT
			p1.Id FROM person p1
			JOIN person p2 ON (p1.email = p2.email)
		WHERE
			p1.Id > p2.Id);
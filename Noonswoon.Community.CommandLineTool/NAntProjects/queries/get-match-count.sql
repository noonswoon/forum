	SELECT COUNT(Id) AS TodayMatchCount
	FROM
	[Match]
	WHERE MatchDate = '${today}'
	AND (User1_id <> 1 AND User2_id <> 2);

	SELECT COUNT(Id) AS TodayMatchResponseDetailCount
	FROM
	MatchResponseDetail
	WHERE MatchDate = '${today}'
	AND (ActorUser_id <> 1 AND ActorUser_id <>2)
	AND (TargetUser_id <> 1 AND TargetUser_id <>2) ;


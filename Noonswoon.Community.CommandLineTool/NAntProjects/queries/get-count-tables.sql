	SELECT COUNT(Id) AS MatchCount 
	FROM
	[Match];

	SELECT TOP 1 Id, CreateDate
	FROM
	[Match] ORDER BY CreateDate DESC;

	SELECT COUNT(Id) AS MatchResponseDetailCount
	FROM
	MatchResponseDetail;

	SELECT TOP 1 Id, CreateDate
	FROM
	[MatchResponseDetail] ORDER BY CreateDate DESC;


	SELECT COUNT(Id) AS UserCount 
	FROM
	[User];

	SELECT TOP 1 Id, CreateDate
	FROM
	[User] ORDER BY CreateDate DESC;

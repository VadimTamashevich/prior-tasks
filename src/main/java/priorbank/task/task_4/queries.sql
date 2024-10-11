--Получить количество неактивных (не было сессий) клиентов.
SELECT COUNT(userid)
FROM USERS usr
WHERE NOT EXISTS (
    SELECT *
    FROM USERSESSIONS user_session
    WHERE usr.userid = user_session.userid
);

--Получить список уникальных UserId активных пользователей, которые не пользовались каналом 1.
SELECT DISTINCT userid
FROM USERSESSIONS
WHERE channeltype <> 1;

--Получить максимальное UserId активного пользователя, статус которого также не равен 1.
SELECT MAX(usr.userid)
FROM USERS usr
WHERE usr.status <> 1;

-- Получить список количества сессий с разделением на MobAppVersion, где "старая" версия <= 80 или не указана.
SELECT user_session.mobappversion, COUNT(*),
SUM(CASE WHEN user_session.mobosversion < 80 OR user_session.mobosversion IS NULL THEN 1 ELSE 0 END)
FROM USERSESSIONS user_session
GROUP BY user_session.mobappversion;
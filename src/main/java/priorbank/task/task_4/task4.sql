--SESSIONS
-- Create table
create table USERSESSIONS
(
    sessionid         NUMBER,
    userid            NUMBER,
    channeltype       INTEGER,
    opentime          DATE,
    closetime         DATE,
    lang              VARCHAR2(10 CHAR),
    mobosversion      INTEGER,
    mobappversion     INTEGER
);


-- Add comments to the table
comment on table USERSESSIONS
  is 'Закрытые сессии пользователя';

-- Add comments to the columns
comment on column USERSESSIONS.sessionid
  is 'ID записи';
comment on column USERSESSIONS.userid
  is 'ID пользователя СДБО';
comment on column USERSESSIONS.channeltype
  is 'Тип канала';
comment on column USERSESSIONS.opentime
  is 'Время создания сессии';
comment on column USERSESSIONS.closetime
  is 'Время закрытия сессии';
comment on column USERSESSIONS.lang
  is 'Текущий язык сессии пользователя';
comment on column USERSESSIONS.mobosversion
  is 'Код версии мобильной ОС';
comment on column USERSESSIONS.mobappversion
  is 'Код версии мобильного приложения';

-- Create primary key
alter table USERSESSIONS add constraint PK_USERSESSIONS primary key (sessionid);

--5 insert data
delete from USERSESSIONS;
insert into USERSESSIONS (SESSIONID, USERID, CHANNELTYPE, OPENTIME, CLOSETIME, LANG, MOBOSVERSION, MOBAPPVERSION)
values (727960, 3824, 9, to_date('12-07-2019 18:06:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-07-2019 19:08:13', 'dd-mm-yyyy hh24:mi:ss'), 'RUS', null, 1);

insert into USERSESSIONS (SESSIONID, USERID, CHANNELTYPE, OPENTIME, CLOSETIME, LANG, MOBOSVERSION, MOBAPPVERSION)
values (727820, 3944, 9, to_date('12-07-2019 10:53:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('12-07-2019 11:59:11', 'dd-mm-yyyy hh24:mi:ss'), 'RUS', null, 1);

insert into USERSESSIONS (SESSIONID, USERID, CHANNELTYPE, OPENTIME, CLOSETIME, LANG, MOBOSVERSION, MOBAPPVERSION)
values (727720, 1691, 9, to_date('11-07-2019 19:38:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-07-2019 20:59:11', 'dd-mm-yyyy hh24:mi:ss'), 'RUS', null, 1);

insert into USERSESSIONS (SESSIONID, USERID, CHANNELTYPE, OPENTIME, CLOSETIME, LANG, MOBOSVERSION, MOBAPPVERSION)
values (727700, 1691, 9, to_date('11-07-2019 18:57:36', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-07-2019 20:05:48', 'dd-mm-yyyy hh24:mi:ss'), 'RUS', null, 1);

insert into USERSESSIONS (SESSIONID, USERID, CHANNELTYPE, OPENTIME, CLOSETIME, LANG, MOBOSVERSION, MOBAPPVERSION)
values (727680, 1691, 9, to_date('11-07-2019 18:29:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-07-2019 19:59:11', 'dd-mm-yyyy hh24:mi:ss'), 'RUS', null, 1);

insert into USERSESSIONS (SESSIONID, USERID, CHANNELTYPE, OPENTIME, CLOSETIME, LANG, MOBOSVERSION, MOBAPPVERSION)
values (726840, 1744, 9, to_date('27-06-2019 15:19:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-06-2019 16:26:09', 'dd-mm-yyyy hh24:mi:ss'), 'RUS', 90, 3);

insert into USERSESSIONS (SESSIONID, USERID, CHANNELTYPE, OPENTIME, CLOSETIME, LANG, MOBOSVERSION, MOBAPPVERSION)
values (723881, 1691, 9, to_date('20-03-2019 15:17:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('20-03-2019 17:08:16', 'dd-mm-yyyy hh24:mi:ss'), 'RUS', null, 1);

insert into USERSESSIONS (SESSIONID, USERID, CHANNELTYPE, OPENTIME, CLOSETIME, LANG, MOBOSVERSION, MOBAPPVERSION)
values (723045, 1744, 9, to_date('05-03-2019 10:16:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-03-2019 12:01:34', 'dd-mm-yyyy hh24:mi:ss'), 'RUS', 80, 2);

insert into USERSESSIONS (SESSIONID, USERID, CHANNELTYPE, OPENTIME, CLOSETIME, LANG, MOBOSVERSION, MOBAPPVERSION)
values (723044, 1744, 9, to_date('05-03-2019 10:08:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-03-2019 11:12:17', 'dd-mm-yyyy hh24:mi:ss'), 'RUS', 80, 2);

insert into USERSESSIONS (SESSIONID, USERID, CHANNELTYPE, OPENTIME, CLOSETIME, LANG, MOBOSVERSION, MOBAPPVERSION)
values (723040, 1744, 9, to_date('05-03-2019 10:01:42', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-03-2019 11:12:17', 'dd-mm-yyyy hh24:mi:ss'), 'RUS', 80, 2);

insert into USERSESSIONS (SESSIONID, USERID, CHANNELTYPE, OPENTIME, CLOSETIME, LANG, MOBOSVERSION, MOBAPPVERSION)
values (723041, 1744, 9, to_date('05-03-2019 10:05:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-03-2019 11:12:17', 'dd-mm-yyyy hh24:mi:ss'), 'ENG', 80, 2);

insert into USERSESSIONS (SESSIONID, USERID, CHANNELTYPE, OPENTIME, CLOSETIME, LANG, MOBOSVERSION, MOBAPPVERSION)
values (723042, 1744, 9, to_date('05-03-2019 10:06:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-03-2019 11:12:17', 'dd-mm-yyyy hh24:mi:ss'), 'RUS', 50, 3);

insert into USERSESSIONS (SESSIONID, USERID, CHANNELTYPE, OPENTIME, CLOSETIME, LANG, MOBOSVERSION, MOBAPPVERSION)
values (723043, 1744, 9, to_date('05-03-2019 10:08:19', 'dd-mm-yyyy hh24:mi:ss'), to_date('05-03-2019 11:12:17', 'dd-mm-yyyy hh24:mi:ss'), 'RUS', 80, 2);

insert into USERSESSIONS (SESSIONID, USERID, CHANNELTYPE, OPENTIME, CLOSETIME, LANG, MOBOSVERSION, MOBAPPVERSION)
values (718640, 3944, 9, to_date('11-02-2019 16:40:22', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-02-2019 18:38:29', 'dd-mm-yyyy hh24:mi:ss'), 'RUS', 50, 2);

insert into USERSESSIONS (SESSIONID, USERID, CHANNELTYPE, OPENTIME, CLOSETIME, LANG, MOBOSVERSION, MOBAPPVERSION)
values (718642, 1691, 9, to_date('11-02-2019 16:54:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-02-2019 18:38:29', 'dd-mm-yyyy hh24:mi:ss'), 'ENG', 80, 2);

insert into USERSESSIONS (SESSIONID, USERID, CHANNELTYPE, OPENTIME, CLOSETIME, LANG, MOBOSVERSION, MOBAPPVERSION)
values (718641, 3824, 9, to_date('11-02-2019 16:52:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('11-02-2019 18:38:29', 'dd-mm-yyyy hh24:mi:ss'), 'ENG', 50, 2);

insert into USERSESSIONS (SESSIONID, USERID, CHANNELTYPE, OPENTIME, CLOSETIME, LANG, MOBOSVERSION, MOBAPPVERSION)
values (718341, 1744, 9, to_date('07-02-2019 15:46:18', 'dd-mm-yyyy hh24:mi:ss'), to_date('07-02-2019 17:04:13', 'dd-mm-yyyy hh24:mi:ss'), 'RUS', 90, 3);

insert into USERSESSIONS (SESSIONID, USERID, CHANNELTYPE, OPENTIME, CLOSETIME, LANG, MOBOSVERSION, MOBAPPVERSION)
values (718360, 1744, 9, to_date('07-02-2019 15:48:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('07-02-2019 17:04:13', 'dd-mm-yyyy hh24:mi:ss'), 'RUS', 90, 3);

insert into USERSESSIONS (SESSIONID, USERID, CHANNELTYPE, OPENTIME, CLOSETIME, LANG, MOBOSVERSION, MOBAPPVERSION)
values (718125, 1691, 9, to_date('06-02-2019 15:31:41', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-02-2019 16:36:15', 'dd-mm-yyyy hh24:mi:ss'), 'RUS', 80, 3);

insert into USERSESSIONS (SESSIONID, USERID, CHANNELTYPE, OPENTIME, CLOSETIME, LANG, MOBOSVERSION, MOBAPPVERSION)
values (718122, 1691, 9, to_date('06-02-2019 15:27:47', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-02-2019 16:36:15', 'dd-mm-yyyy hh24:mi:ss'), 'RUS', null, 1);

insert into USERSESSIONS (SESSIONID, USERID, CHANNELTYPE, OPENTIME, CLOSETIME, LANG, MOBOSVERSION, MOBAPPVERSION)
values (718100, 1691, 9, to_date('06-02-2019 14:41:39', 'dd-mm-yyyy hh24:mi:ss'), to_date('06-02-2019 16:04:14', 'dd-mm-yyyy hh24:mi:ss'), 'ENG', null, 1);

insert into USERSESSIONS (SESSIONID, USERID, CHANNELTYPE, OPENTIME, CLOSETIME, LANG, MOBOSVERSION, MOBAPPVERSION)
values (717720, 1691, 9, to_date('04-02-2019 12:17:17', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-02-2019 13:24:11', 'dd-mm-yyyy hh24:mi:ss'), 'RUS', null, 1);

insert into USERSESSIONS (SESSIONID, USERID, CHANNELTYPE, OPENTIME, CLOSETIME, LANG, MOBOSVERSION, MOBAPPVERSION)
values (717700, 3724, 9, to_date('04-02-2019 12:11:32', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-02-2019 13:24:11', 'dd-mm-yyyy hh24:mi:ss'), 'RUS', null, 1);

insert into USERSESSIONS (SESSIONID, USERID, CHANNELTYPE, OPENTIME, CLOSETIME, LANG, MOBOSVERSION, MOBAPPVERSION)
values (717680, 3824, 9, to_date('04-02-2019 11:54:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-02-2019 13:04:14', 'dd-mm-yyyy hh24:mi:ss'), 'RUS', null, 1);

insert into USERSESSIONS (SESSIONID, USERID, CHANNELTYPE, OPENTIME, CLOSETIME, LANG, MOBOSVERSION, MOBAPPVERSION)
values (717682, 1691, 9, to_date('04-02-2019 11:54:46', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-02-2019 13:04:14', 'dd-mm-yyyy hh24:mi:ss'), 'ENG', null, 1);

insert into USERSESSIONS (SESSIONID, USERID, CHANNELTYPE, OPENTIME, CLOSETIME, LANG, MOBOSVERSION, MOBAPPVERSION)
values (717681, 1691, 9, to_date('04-02-2019 11:54:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('04-02-2019 13:04:14', 'dd-mm-yyyy hh24:mi:ss'), 'RUS', null, 1);

insert into USERSESSIONS (SESSIONID, USERID, CHANNELTYPE, OPENTIME, CLOSETIME, LANG, MOBOSVERSION, MOBAPPVERSION)
values (715540, 3724, 9, to_date('22-01-2019 15:55:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-01-2019 17:52:03', 'dd-mm-yyyy hh24:mi:ss'), 'RUS', null, 1);

insert into USERSESSIONS (SESSIONID, USERID, CHANNELTYPE, OPENTIME, CLOSETIME, LANG, MOBOSVERSION, MOBAPPVERSION)
values (715560, 1691, 9, to_date('22-01-2019 16:01:55', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-01-2019 17:52:03', 'dd-mm-yyyy hh24:mi:ss'), 'RUS', null, 1);


insert into USERSESSIONS (SESSIONID, USERID, CHANNELTYPE, OPENTIME, CLOSETIME, LANG, MOBOSVERSION, MOBAPPVERSION)
values (728400, 1744, 1, to_date('27-07-2019 17:15:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('27-07-2019 19:57:57', 'dd-mm-yyyy hh24:mi:ss'), 'RUS', null, null);

insert into USERSESSIONS (SESSIONID, USERID, CHANNELTYPE, OPENTIME, CLOSETIME, LANG, MOBOSVERSION, MOBAPPVERSION)
values (728381, 1767, 1, to_date('26-07-2019 17:57:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-07-2019 17:58:06', 'dd-mm-yyyy hh24:mi:ss'), 'RUS', null, null);

insert into USERSESSIONS (SESSIONID, USERID, CHANNELTYPE, OPENTIME, CLOSETIME, LANG, MOBOSVERSION, MOBAPPVERSION)
values (728380, 1691, 1, to_date('26-07-2019 17:54:42', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-07-2019 17:57:02', 'dd-mm-yyyy hh24:mi:ss'), 'ENG', null, null);

insert into USERSESSIONS (SESSIONID, USERID, CHANNELTYPE, OPENTIME, CLOSETIME, LANG, MOBOSVERSION, MOBAPPVERSION)
values (728361, 1744, 1, to_date('26-07-2019 10:06:49', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-07-2019 11:57:57', 'dd-mm-yyyy hh24:mi:ss'), 'RUS', null, null);

insert into USERSESSIONS (SESSIONID, USERID, CHANNELTYPE, OPENTIME, CLOSETIME, LANG, MOBOSVERSION, MOBAPPVERSION)
values (728360, 3724, 1, to_date('26-07-2019 10:05:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('26-07-2019 10:06:43', 'dd-mm-yyyy hh24:mi:ss'), 'ENG', null, null);

insert into USERSESSIONS (SESSIONID, USERID, CHANNELTYPE, OPENTIME, CLOSETIME, LANG, MOBOSVERSION, MOBAPPVERSION)
values (728340, 1691, 1, to_date('25-07-2019 18:53:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-07-2019 20:57:55', 'dd-mm-yyyy hh24:mi:ss'), 'RUS', null, null);

commit;

--USERS
-- Create table
create table USERS
(
    userid            NUMBER,
    clientid          NUMBER,
    status            INTEGER,
    login             VARCHAR2(250 CHAR)
);

-- Add comments to the table
comment on table USERS
  is 'Пользователи';
-- Add comments to the columns
comment on column USERS.userid
  is 'ID пользователя';
comment on column USERS.clientid
  is 'ID клиента';
comment on column USERS.status
  is 'Состояние пользователя';
comment on column USERS.login
  is 'Логин';


-- Create/Recreate primary, unique and foreign key constraints
alter table USERS add constraint PK_USERS primary key (USERID);

-- insert data
delete from users;
insert into users (USERID, CLIENTID, STATUS, LOGIN)
values (1101, 1100, 1, 'LDWH_BUGFIX');


insert into users (USERID, CLIENTID, STATUS, LOGIN)
values (1691, 1690, 3, 'K8DP5TB17');

insert into users (USERID, CLIENTID, STATUS, LOGIN)
values (1744, 1743, 1, '5010155E045PB7');

insert into users (USERID, CLIENTID, STATUS, LOGIN)
values (1767, 1766, 1, 'Shagal');

insert into users (USERID, CLIENTID, STATUS, LOGIN)
values (2204, 2223, 4, '3220156M088BI2');

insert into users (USERID, CLIENTID, STATUS, LOGIN)
values (2584, 2603, 1, '3220370M027PB8');

insert into users (USERID, CLIENTID, STATUS, LOGIN)
values (2624, 2643, 3, '928805A803PB3');

insert into users (USERID, CLIENTID, STATUS, LOGIN)
values (3424, 3443, 5, '3190624M433PB3');

insert into users (USERID, CLIENTID, STATUS, LOGIN)
values (3504, 3523, 1, '1234467');

insert into users (USERID, CLIENTID, STATUS, LOGIN)
values (3724, 3300, 1, '322000000');

insert into users (USERID, CLIENTID, STATUS, LOGIN)
values (3784, 3803, 1, '7091431A101PB3');

insert into users (USERID, CLIENTID, STATUS, LOGIN)
values (3824, 3300, 3, '7091434A104PB3');

insert into users (USERID, CLIENTID, STATUS, LOGIN)
values (3864, 3883, 1, '7009154A107PB2');

insert into users (USERID, CLIENTID, STATUS, LOGIN)
values (3884, 3300, 1, '7091432A102PB3');

insert into users (USERID, CLIENTID, STATUS, LOGIN)
values (3904, 3923, 4, '7009562A093PB1');

insert into users (USERID, CLIENTID, STATUS, LOGIN)
values (3944, 3300, 1, '7009151A023PB2');

commit;
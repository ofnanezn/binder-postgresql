
drop table if exists eteam;
create table eteam(
 id text primary key,
 teamname text,
 coach text
);
\copy eteam from 'data/eteam.csv' delimiter ',' csv header;

drop table if exists game;
create table game(
 id integer primary key,
 mdate text,
 stadium text,
 team1 text,
 team2 text
);
\copy game from 'data/game.csv' delimiter ',' csv header;

drop table if exists goal;
create table goal(
 matchid integer,
 teamid text,
 player text,
 gtime integer primary key
);
\copy goal from 'data/goal.csv' delimiter ',' csv header;


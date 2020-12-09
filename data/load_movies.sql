
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
 team1 text references eteam (id),
 team2 text references eteam (id)
);
\copy game from 'data/game.csv' delimiter ',' csv header;

drop table if exists goal;
create table goal(
 matchid integer primary key references game (id),
 teamid text references eteam (id),
 player text,
 gtime integer primary key
);
\copy goal from 'data/goal.csv' delimiter ',' csv header;


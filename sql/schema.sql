create table players (
  player_id   int primary key,
  player_name text
);

create table events (
  event_id    int primary key,
  event_name  text,
  start_date  date,
  season      int
);

create table round_stats (
  event_id     int REFERENCES events(event_id),
  player_id    int REFERENCES players(player_id),
  round_num    int CHECK (round_num BETWEEN 1 AND 4),
  round_date   date,

  sg_total     numeric(6,3),
  sg_app       numeric(6,3),
  sg_ott       numeric(6,3),
  sg_arg       numeric(6,3),
  sg_putt      numeric(6,3),

  score        int,
  made_cut     boolean,
);

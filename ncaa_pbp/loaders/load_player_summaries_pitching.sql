begin;

drop table if exists ncaa_pbp.player_summaries_pitching;

create table ncaa_pbp.player_summaries_pitching (
       year					integer,
       year_id					integer,
       division_id				integer,
       team_id					integer,
       team_name				text,
       jersey_number				text,
       player_id				integer,
       player_name				text,
       player_url				text,
       class_year				text,
       position					text,
       gp					integer,
       gs					integer,
       app					integer,
       gs2					integer,
       era					float,
       ip					text,
       h					integer,
       r					integer,
       er					integer,
       bb					integer,
       so					integer,
       sho					integer,
       bf					text,
       p_oab					text,
       d_allowed				integer,
       t_allowed				integer,
       hr_allowed				integer,
       cso					integer,
       wp					integer,
       bk					integer,
       hb					integer,
       kl					integer,
       ibb					integer,
       cg					integer,
       inh_run					integer,
       inh_run_score				integer,
       sha					integer,
       sfa					integer,
       cia					integer,
       go					integer,
       fo					integer,
       w					integer,
       l					integer,
       sv					integer,
       primary key (year_id, player_id),
       unique (year, player_id)
);

copy ncaa_pbp.player_summaries_pitching from '/tmp/player_summaries.csv' with delimiter as E'\t' csv;

commit;

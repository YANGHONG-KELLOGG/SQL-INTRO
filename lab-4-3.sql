-- Who hit the most home runs in 2019, and what team did they play for?

-- Expected result:
--
-- +---------------+------------+-----------+-----------+
-- | New York Mets | Pete       | Alonso    | 53        |
-- +---------------+------------+-----------+-----------+
select teams.name, players.first_name, players.last_name, stats.home_runs 
from teams inner join players inner join stats
on teams.id = stats.team_id and players.id = stats. player_id
where teams.year = "2019"
order by stats.home_runs desc
limit 1;

-- Below is the answer, which looks better
--SELECT teams.name, players.first_name, players.last_name, stats.home_runs
--FROM stats 
--   INNER JOIN teams ON teams.id = stats.team_id
--   INNER JOIN players ON players.id = stats.player_id
-- WHERE teams.year = 2019
-- ORDER BY stats.home_runs DESC
-- LIMIT 1;
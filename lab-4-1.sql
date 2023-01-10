-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935

select sum(stats.hits) 
from stats inner join players
on stats.player_id = players.id
where players.first_name = "Barry" and players.last_name = "Bonds";

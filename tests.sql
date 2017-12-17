select text from all_source where name = 'most_paid_coach_details'
and type = 'PACKAGE BODY'
order by line;

select text from all_source where name = 'players_with_most_points'
and type = 'PACKAGE BODY'
order by line;

select text from all_source where name = 'players_with_most_assists'
and type = 'PACKAGE BODY'
order by line;

select text from all_source where name = 'players_with_most_games_played'
and type = 'PACKAGE BODY'
order by line;
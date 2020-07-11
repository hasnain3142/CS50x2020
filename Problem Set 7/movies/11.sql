SELECT title from movies JOIN ratings ON id = movie_id
WHERE id IN
(SELECT movie_id from ratings WHERE movie_id IN
(SELECT movie_id FROM stars
WHERE person_id = (SELECT id from people
WHERE name = "Chadwick Boseman")) ORDER BY rating DESC LIMIT 5) ORDER BY rating DESC;
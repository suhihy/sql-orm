-- 1번 유저가 작성한 모든 점수(Score)
-- User.objects.get(id=1).score_set.all()
-- Score.objects.filter(user_id=1)

-- SELECT *FROM movies_user JOIN movies_score
-- ON movies_user.id = movies_score.user_id
-- WHERE movies_user.id = 1;



-- 1번영화의 카테고리
-- Movie.objects.get(id=1).categories.all()

-- SELECT *
-- FROM movies_movie m JOIN movies_category_movies cm
-- ON m.id = cm.movie_id
-- JOIN movies_category c
-- ON cm.category_id = c.id
-- WHERE m.id = 10;


-- drama 카테고리에 속한 모든영화
-- Category.objects.get(name='drama').movies.all()

-- SELECT *
-- FROM movies_category c JOIN movies_category_movies cm
-- ON c.id = cm.category_id
-- JOIN movies_movie m 
-- ON cm.movie_id = m.id
-- WHERE c.name = 'drama';


-- group by
-- User.objects.values('country').annotate(Count('id'))

-- SELECT country, COUNT(*) FROM movies_user
-- GROUP BY country;


-- 나라별 점수 평균
-- User.objects.values('country').annotate(Count('id'), Avg('score__value'))

-- SELECT country, COUNT(*), AVG(value) 
-- FROM movies_user mu JOIN movies_score ms
-- ON mu.id = ms.user_id
-- GROUP BY country;







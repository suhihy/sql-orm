-- 1번 유저가 작성한 모든 점수(Score)
-- User.objects.get(id=1).score_set.all()
-- Score.objects.filter(user_id=1)

-- SELECT *
-- FROM movies_user JOIN movies_score
-- ON movies_user.id = movies_score.user_id
-- WHERE movies_user.id = 1;



-- 1번영화의 카테고리
-- Movie.objects.get(id=1).categories.all()


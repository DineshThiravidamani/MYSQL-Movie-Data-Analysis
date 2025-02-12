USE PROJECT2;
SELECT * FROM CREDITS;
SELECT * FROM MOVIES;
SELECT MIN(REVENUE) FROM MOVIES;
SELECT GENRES FROM MOVIES;
SELECT TITLE , RELEASE_DATE,REVENUE FROM MOVIES WHERE REVENUE IN (SELECT MAX(REVENUE) FROM MOVIES);
SELECT TITLE ,REVENUE FROM MOVIES ORDER BY REVENUE DESC LIMIT 5;	

SELECT TITLE,RELEASE_DATE,REVENUE FROM MOVIES WHERE REVENUE IN (SELECT MAX(REVENUE) FROM MOVIES);
SELECT TITLE,VOTE_AVERAGE FROM MOVIES WHERE VOTE_AVERAGE > (SELECT AVG(VOTE_AVERAGE) FROM MOVIES);
SELECT TITLE,RELEASE_DATE FROM MOVIES WHERE YEAR(RELEASE_DATE) = (SELECT year(RELEASE_DATE) FROM MOVIES WHERE TITLE='THE DARK KNIGHT RISES');
SELECT TITLE,REVENUE FROM MOVIES WHERE RUNTIME < (SELECT AVG(RUNTIME) FROM MOVIES );
SELECT TITLE,REVENUE,RELEASE_DATE FROM MOVIES WHERE REVENUE IN (SELECT MAX(REVENUE) FROM MOVIES GROUP BY YEAR(RELEASE_DATE));
SELECT GENRES,AVG(BUDGET) FROM MOVIES GROUP BY GENRES;
SELECT TITLE , ORIGINAL_TITLE FROM MOVIES;
SELECT TITLE,REVENUE FROM MOVIES WHERE REVENUE > (SELECT REVENUE FROM MOVIES WHERE TITLE = "THE AVENGERS");
SELECT TITLE ,REVENUE,RELEASE_DATE FROM MOVIES WHERE REVENUE = ANY(SELECT MAX(REVENUE) FROM MOVIES GROUP BY YEAR(RELEASE_DATE));
SELECT TITLE ,REVENUE,RELEASE_DATE FROM MOVIES WHERE REVENUE > ANY(SELECT MAX(REVENUE) FROM MOVIES GROUP BY YEAR(RELEASE_DATE));	
SELECT COUNT(TITLE) FROM MOVIES;	
SELECT TITLE,REVENUE,RELEASE_DATE FROM MOVIES WHERE REVENUE > ALL(SELECT REVENUE FROM MOVIES WHERE YEAR(RELEASE_DATE)=2015);
SELECT TITLE,REVENUE FROM MOVIES WHERE YEAR(RELEASE_DATE)=2015 ORDER BY REVENUE DESC;
SELECT TITLE,VOTE_COUNT FROM MOVIES WHERE VOTE_COUNT > ALL(SELECT VOTE_COUNT FROM MOVIES WHERE YEAR(RELEASE_DATE)=2013);
SELECT TITLE,VOTE_AVERAGE FROM MOVIES WHERE VOTE_AVERAGE < ANY(SELECT VOTE_AVERAGE FROM MOVIES WHERE YEAR(RELEASE_DATE)=2017);
SELECT TITLE,BUDGET FROM MOVIES WHERE BUDGET > ALL(SELECT BUDGET FROM MOVIES WHERE YEAR(RELEASE_DATE)=2016);	
SELECT YEAR(RELEASE_DATE),COUNT(TITLE)  FROM MOVIES  GROUP BY YEAR(RELEASE_DATE) ORDER BY YEAR(RELEASE_DATE) DESC ;
SELECT SUM(BUDGET),YEAR(RELEASE_DATE) FROM MOVIES GROUP BY YEAR(RELEASE_DATE);


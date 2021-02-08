-----회원------
--회원등록  
INSERT INTO member (member_no, id, pw, name, email)
VALUES (1, kk4403, 1234, 김진우, kk4403@naver.com)
--회원수정 
UPDATE member
SET member_no=1, id='kk4403', pw=4321, name='김진우', 1dfdf@daum.net
WHERE id='kk4403'
--회원삭제  
DELETE FROM member
WHERE id='kk4403'

-----즐겨찾기------
--응원팀추가  
INSERT INTO star (star_no, id, teamname)
VALUES( 1, kk4403, 토트넘)
--응원팀수정  
UPDATE star
SET star_no=1, id=kk4403, teamname='맨유'
WHERE id='kk4403'
 --응원팀삭제  
DELETE FROM star
WHERE id='kk403' and teamname='맨유'
 
-----경기정보------
--경기정보추가  
INSERT INTO gameinformation (game_no, leaguename, homename, homescore, homeimage, awayname, awayscore, round, stadium, matchdate, homewin, awaywin, season)
VALUES (1, Premierleague,Manchester United, 1, ...png, Westham, 0, ...png, 17, OldTrafford, 20210201, 1,0,20202021)
--월별일정찾기 
SELECT leaguename, homename, homescore, homeimage, awayname, awayscore, round, stadium, matchdate, homewin, awaywin, season
FROM gameinformation
WHERE matchdate LIKE '202102%'
--팀이름으로일정찾기  
SELECT leaguename, homename, homescore, homeimage, awayname, awayscore, round, stadium, matchdate, homewin, awaywin, season
FROM gameinformation
WHERE homename='ManchesterUnited' OR awayname='ManchesterUnited'

-----선수 정보------
--득점왕찾기
SELECT game,score, playname, assist, AP, shoot, shotontarget, foul, yellowcard, redcard, offside, teamname, playerimage, leaguename
FROM player
ORDER BY score DESC
--도움왕찾기
SELECT game,score, playname, assist, AP, shoot, shotontarget, foul, yellowcard, redcard, offside, teamname, playerimage, leaguename
FROM player
ORDER BY assist DESC
--공격포인트왕찾기
SELECT game,score, playname, assist, AP, shoot, shotontarget, foul, yellowcard, redcard, offside, teamname, playerimage, leaguename
FROM player
ORDER BY AP DESC
--슈팅왕찾기
SELECT game,score, playname, assist, AP, shoot, shotontarget, foul, yellowcard, redcard, offside, teamname, playerimage, leaguename
FROM player
ORDER BY shoot DESC
--경기수왕찾기
SELECT game,score, playname, assist, AP, shoot, shotontarget, foul, yellowcard, redcard, offside, teamname, playerimage, leaguename
FROM player
ORDER BY game DESC

-----게시물------
--게시물등록  
INSERT INTO board (boad_no, id, title, content, date, file, leaguename)
VALUES (1, kk4403, 최강맨유,  홈에서 승리하다,  20210201, ...png, Premierleague)
--게시물수정  
UPDATE board
SET board_no=1, id='kk4403', title='최강 토트넘', content='토트넘이 최고야', 20210202, ...png, Premierleague
--게시물삭제  
DELETE FROM board
WHERE board_no=1
--게시물리스트 불러오기  
SELECT boad_no, id, title, content, date, file, leaguename
FROM board
-----댓글------ 
--댓글등록  
INSERT INTO answer (comment_no, id, content, board_no, date)
VALUES (1, bcg1213, 나이스~, 1, 20210201) 
--댓글수정  
UPDATE answer
SET answer_no=1, id='kk4403', content='좋구요~', board_no=1, 20210202
--댓글삭제  
DELETE FROM answer
WHERE answer_no=1
--댓글리스트 불러오기  
SELECT answer_no, id, content, board_no, date
FROM answer
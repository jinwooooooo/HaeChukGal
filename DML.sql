-----ȸ��------
--ȸ�����  
INSERT INTO member (member_no, id, pw, name, email)
VALUES (1, kk4403, 1234, ������, kk4403@naver.com)
--ȸ������ 
UPDATE member
SET member_no=1, id='kk4403', pw=4321, name='������', 1dfdf@daum.net
WHERE id='kk4403'
--ȸ������  
DELETE FROM member
WHERE id='kk4403'

-----���ã��------
--�������߰�  
INSERT INTO star (star_no, id, teamname)
VALUES( 1, kk4403, ��Ʈ��)
--����������  
UPDATE star
SET star_no=1, id=kk4403, teamname='����'
WHERE id='kk4403'
 --����������  
DELETE FROM star
WHERE id='kk403' and teamname='����'
 
-----�������------
--��������߰�  
INSERT INTO gameinformation (game_no, leaguename, homename, homescore, homeimage, awayname, awayscore, round, stadium, matchdate, homewin, awaywin, season)
VALUES (1, Premierleague,Manchester United, 1, ...png, Westham, 0, ...png, 17, OldTrafford, 20210201, 1,0,20202021)
--��������ã�� 
SELECT leaguename, homename, homescore, homeimage, awayname, awayscore, round, stadium, matchdate, homewin, awaywin, season
FROM gameinformation
WHERE matchdate LIKE '202102%'
--���̸���������ã��  
SELECT leaguename, homename, homescore, homeimage, awayname, awayscore, round, stadium, matchdate, homewin, awaywin, season
FROM gameinformation
WHERE homename='ManchesterUnited' OR awayname='ManchesterUnited'

-----���� ����------
--������ã��
SELECT game,score, playname, assist, AP, shoot, shotontarget, foul, yellowcard, redcard, offside, teamname, playerimage, leaguename
FROM player
ORDER BY score DESC
--�����ã��
SELECT game,score, playname, assist, AP, shoot, shotontarget, foul, yellowcard, redcard, offside, teamname, playerimage, leaguename
FROM player
ORDER BY assist DESC
--��������Ʈ��ã��
SELECT game,score, playname, assist, AP, shoot, shotontarget, foul, yellowcard, redcard, offside, teamname, playerimage, leaguename
FROM player
ORDER BY AP DESC
--���ÿ�ã��
SELECT game,score, playname, assist, AP, shoot, shotontarget, foul, yellowcard, redcard, offside, teamname, playerimage, leaguename
FROM player
ORDER BY shoot DESC
--������ã��
SELECT game,score, playname, assist, AP, shoot, shotontarget, foul, yellowcard, redcard, offside, teamname, playerimage, leaguename
FROM player
ORDER BY game DESC

-----�Խù�------
--�Խù����  
INSERT INTO board (boad_no, id, title, content, date, file, leaguename)
VALUES (1, kk4403, �ְ�����,  Ȩ���� �¸��ϴ�,  20210201, ...png, Premierleague)
--�Խù�����  
UPDATE board
SET board_no=1, id='kk4403', title='�ְ� ��Ʈ��', content='��Ʈ���� �ְ��', 20210202, ...png, Premierleague
--�Խù�����  
DELETE FROM board
WHERE board_no=1
--�Խù�����Ʈ �ҷ�����  
SELECT boad_no, id, title, content, date, file, leaguename
FROM board
-----���------ 
--��۵��  
INSERT INTO answer (comment_no, id, content, board_no, date)
VALUES (1, bcg1213, ���̽�~, 1, 20210201) 
--��ۼ���  
UPDATE answer
SET answer_no=1, id='kk4403', content='������~', board_no=1, 20210202
--��ۻ���  
DELETE FROM answer
WHERE answer_no=1
--��۸���Ʈ �ҷ�����  
SELECT answer_no, id, content, board_no, date
FROM answer
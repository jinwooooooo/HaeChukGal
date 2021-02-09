create table member(
   member_no number not null ,
   pw varchar2(100) not null,
   name varchar2(20) not null,
   email varchar2(20) not null,
   regdate date default sysdate,
   enabled number(1,0) not null,
   role varchar2(20) not null,
   constraint pk_member primary key(member_no)
);

CREATE TABLE board(
    board_no number not null,
    content VARCHAR2(2000) not null,
    title VARCHAR2(100) not null,
    regdate date default sysdate,
    fileName VARCHAR2(50),
    leagueName VARCHAR2(20) not null,
    member_no NUMBER,
    constraint pk_board primary key(board_no),
    constraint fk_member foreign key(member_no) references member(member_no) on Delete CASCADE
);
CREATE TABLE teamrank (
    team_no number not null,
    rank NUMBER(20),
    game NUMBER(20),
    win NUMBER(20),
    draw NUMBER(20),
    loss NUMBER(20),
    score NUMBER(20),
    losspoint NUMBER(20),
    gapscore NUMBER(20),
    point NUMBER(20),
    season VARCHAR2(2000),
    teamname VARCHAR2(2000),
    teamimage VARCHAR2(2000),
    leaguename VARCHAR2(2000),
    constraint pk_team primary key(team_no)
);


CREATE TABLE player (
    player_no number not null,
    game NUMBER(20) not null,
    score NUMBER(20) not null,
    playername VARCHAR2(2000) not null,
    assist NUMBER(20) not null,
    attackpoint Number(38) not null,
    shoot NUMBER(38) not null,
    shootontarget NUMBER(38) not null,
    foul NUMBER(38) not null,
    yellowcard NUMBER(20) not null,
    redcard NUMBER(20) not null,
    offside NUMBER(20) not null,
    teamname VARCHAR2(2000) not null,
    playerimage VARCHAR2(2000),
    leaguename VARCHAR2(2000) not null,
    rank NUMBER(20) not null,
    season VARCHAR2(2000) not null,
    constraint pk_player primary key(player_no)
);
CREATE TABLE gameinformation(
    game_no number not null,
    leaguename VARCHAR2(100),
    homename VARCHAR2(100),
    homescore VARCHAR2(100),
    homeimage VARCHAR2(2000),
    awayname VARCHAR2(100),
    awayscore VARCHAR2(100),
    awayimage VARCHAR2(2000),
    round VARCHAR2(100),
    stadium VARCHAR2(100),
    matchdate VARCHAR2(200),
    homewin VARCHAR2(100),
    awaywin VARCHAR2(100),
    season VARCHAR2(100),
    matchtime VARCHAR2(100),
    gamestatus VARCHAR2(100), 
    constraint pk_gameinformation primary key(game_no)
);
CREATE TABLE answer(
    answer_no number not null,
    member_no number not null,
    board_no number not null,
    content VARCHAR2(500) not null,
    regdate date default sysdate,
    constraint pk_answer primary key(answer_no),
    constraint fk_member_no foreign key(member_no) references member(member_no) on Delete CASCADE,
    constraint fk_board_no foreign key(board_no) references board(board_no) on Delete CASCADE
);

CREATE TABLE star(
    star_no NUMBER not null,
    member_no NUMBER not null,
    teamname VARCHAR2(1000) not null,
    constraint pk_star primary key(star_no),
    constraint fk_memberNo foreign key(member_no) references member(member_no) on Delete CASCADE
);

create sequence seq_teamrank;
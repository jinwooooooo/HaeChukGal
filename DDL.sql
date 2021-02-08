create table member(
   member_no number not null ,
   pw varchar2(20) not null,
   name varchar2(20) not null,
   email varchar2(20) not null,
   regdate date default sysdate,
   constraint pk_member primary key(member_no)
);

CREATE TABLE board(
    board_no number not null,
    content VARCHAR2(2000) not null,
    title VARCHAR2(100) not null,
    regdate date default sysdate,
    fileName VARCHAR2(50),
    fileDir VARCHAR2(3000),
    leagueName VARCHAR2(20) not null,
    member_no NUMBER,
    constraint pk_board primary key(board_no),
    constraint fk_member foreign key(member_no) references member(member_no) on Delete CASCADE
);


CREATE TABLE player (
    player_no number not null,
    game NUMBER(20) not null,
    score NUMBER(20) not null,
    playername VARCHAR2(20) not null,
    assist NUMBER(20) not null,
    attackpoint Number(38) not null,
    shoot NUMBER(38) not null,
    shotontarget NUMBER(38) not null,
    foul NUMBER(38) not null,
    yellowcard NUMBER(20) not null,
    redcard NUMBER(20) not null,
    offside NUMBER(20) not null,
    teamname VARCHAR2(20) not null,
    playerimage VARCHAR2(100) not null,
    leaguename VARCHAR2(100) not null,
    constraint pk_player primary key(player_no)
);

CREATE TABLE gameinformation(
    game_no number not null,
    leaguename VARCHAR2(100) not null,
    homename VARCHAR2(100) not null,
    homescore Number(10) not null,
    homeimage VARCHAR2(2000) not null,
    awayname VARCHAR2(100) not null,
    awayscore Number(10) not null,
    awayimage VARCHAR2(10) not null,
    round NUMBER(10) not null,
    stadium VARCHAR2(10) not null,
    matchdate date default sysdate,
    homewin Number(1,0) not null,
    awaywin Number(1,0) not null,
    season NUMBER(10) not null,
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


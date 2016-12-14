--drop table 

drop table recommend;
drop table fund_time_limit;
drop table subscription;
drop table apply_paid;
drop table pay_history;
drop table cash_history;
drop table image;
drop table apply_fund;
drop table additional_info;
drop table report;
drop table episode;
drop table fund;
drop table webtoon;
drop table user_information;
drop table category;

--sequence drop

drop sequence webtoon_seq;
drop sequence a_f_seq;
drop sequence a_p_seq;
drop sequence fund_seq;
drop sequence episode_seq;
drop sequence report_seq;
drop sequence subscription_seq;
drop sequence cash_history_seq;
drop sequence recommend_seq;




CREATE TABLE user_information
(
   email                 VARCHAR2(30)  NOT NULL constraint user_information_email_pk primary key,
   nickname              VARCHAR2(30)  NOT NULL constraint user_information_nickname_un unique,
   password              VARCHAR2(20)  NOT NULL ,
   phone                 VARCHAR2(15)  NOT NULL constraint user_information_phone_un unique,
   cash_point            NUMBER  default 0,
   user_level            VARCHAR2(30)  default '독자',
   name                  VARCHAR2(20)  NOT NULL ,
   gender                VARCHAR2(10)  NOT NULL ,
   birth_date            VARCHAR2(10)  NOT NULL 
);

CREATE TABLE additional_info
(
   email                 VARCHAR2(30)  NOT NULL constraint additional_info_email_fk references user_information(email),
   account_password      VARCHAR2(20)  NOT NULL ,
   bank_name           VARCHAR2(30)  NOT NULL ,
   account_number        VARCHAR2(20)  NOT NULL ,
   identification_card   VARCHAR2(100)  NOT NULL ,
   constraint additional_info_email_pk primary key(email) 
);

CREATE TABLE category
(
   category_code         VARCHAR2(10)  NOT NULL constraint category_code_pk primary key,
   category_name         VARCHAR2(10)  NULL 
);

CREATE TABLE webtoon
(
   webtoon_code          NUMBER  NOT NULL constraint webtoon_code_pk primary key,
   webtoon_name          VARCHAR2(50)  NOT NULL ,
   webtoon_level         VARCHAR2(10)  default 'free' ,
   webtoon_state         VARCHAR2(10)  default '연재' ,
   category_code         VARCHAR2(10)  NOT NULL constraint webtoon_category_fk references category(category_code) on delete cascade,
   penalty               VARCHAR2(10)  default 'green',
   nickname               VARCHAR2(30)  NOT NULL constraint webtoon_nickname_fk references user_information(nickname),
   funding_period        NUMBER  NULL ,
   summary               VARCHAR2(200)  NULL ,
   webtoon_thumbnail     VARCHAR2(100) NULL 
);

CREATE TABLE apply_fund
(
   apply_fund_sequence   NUMBER  NOT NULL constraint apply_fund_sequence_pk primary key,
   email                 VARCHAR2(30)  NOT NULL constraint apply_fund_email_fk references user_information(email),
   webtoon_code          NUMBER  NOT NULL constraint apply_fund_webtoon_fk references webtoon(webtoon_code) on delete cascade,
   score                 NUMBER  NULL 
);

CREATE TABLE apply_paid
(
   apply_paid_sequence   NUMBER  NOT NULL constraint apply_paid_sequence_pk primary key,
   email                 VARCHAR2(30)  NOT NULL constraint apply_paid_email_fk references user_information(email),
   webtoon_code          NUMBER  NOT NULL constraint apply_paid_webtoon_fk references webtoon(webtoon_code) on delete cascade
);

CREATE TABLE fund
(
   fund_code      NUMBER  NOT NULL constraint fund_code_pk primary key ,
   episode_fund   NUMBER  NULL  ,
   webtoon_code   NUMBER  NOT NULL constraint fund_webtoon_code_fk references webtoon(webtoon_code) on delete cascade,
   episode_number  NUMBER  NULL
);

CREATE TABLE episode
(
   episode_sequence      NUMBER  NOT NULL constraint episode_sequence_pk primary key,
   episode_number        NUMBER  NULL ,
   hits                  NUMBER  NULL ,
   recommendation        NUMBER  NULL ,
   upload_date           DATE  NULL ,
   webtoon_code          NUMBER  NOT NULL constraint episode_webtoon_code_fk references webtoon(webtoon_code),
   episode_title         VARCHAR2(50)  NULL ,
   author_word           VARCHAR2(100)  NULL ,
   thumbnail             VARCHAR2(100)  NULL ,
   fund_code           NUMBER  NULL constraint episode_fund_code_fk references fund(fund_code) on delete cascade
);

CREATE TABLE image
(
   image_index           NUMBER  NOT NULL ,
   episode_sequence      NUMBER  NOT NULL constraint image_episode_sequence references episode(episode_sequence) on delete cascade,
   file_name             VARCHAR2(100)  NULL ,
   constraint image_pk primary key(image_index, episode_sequence)
);

CREATE TABLE fund_time_limit
(
   start_date            DATE  NOT NULL ,
   due_date              DATE  NOT NULL ,
   episode_sequence      NUMBER  NOT NULL constraint time_limit_episode_fk references episode(episode_sequence) on delete cascade ,
   constraint time_limit_episode_pk primary key(episode_sequence)
);

CREATE TABLE pay_history
(
   email                 VARCHAR2(30)  NOT NULL constraint pay_history_email_fk references user_information(email),
   episode_sequence      NUMBER  NOT NULL constraint pay_history_episode_fk references episode(episode_sequence) on delete cascade ,
   cash_point            NUMBER  NULL ,
   payment_date          DATE  NULL ,
   payment_item          VARCHAR2(50)  NULL ,
   constraint pay_history_pk primary key(email, episode_sequence)
);

CREATE TABLE report
(
   report_sequence       NUMBER  NOT NULL constraint report_sequence_pk primary key,
   content               VARCHAR2(200)  NULL ,
   email                 VARCHAR2(30)  NOT NULL constraint report_email_fk references user_information(email),
   webtoon_code         NUMBER  NOT NULL constraint report_webtoon_code_fk references webtoon(webtoon_code) on delete cascade,
   episode_sequence     NUMBER  NOT NULL constraint report_episode_fk references episode(episode_sequence)
);

CREATE TABLE subscription
(
   subscription_sequence  NUMBER  NOT NULL constraint subscription_sequence_pk primary key, 
   email                  VARCHAR2(30)  NOT NULL constraint subscription_email_fk references user_information(email) ,
   webtoon_code           NUMBER  NOT NULL constraint subscription_webtoon_code_fk references webtoon(webtoon_code) on delete cascade
);

CREATE TABLE cash_history
(
   cash_history_sequence  NUMBER  NOT NULL constraint cash_history_pk primary key,
   account_day            DATE  NULL ,
   email                  VARCHAR2(30)  NOT NULL constraint cash_history_email_fk references user_information(email) on delete cascade ,
   cash_point             NUMBER  NULL ,
   content                VARCHAR2(50)  NULL ,
   trade_state            VARCHAR2(10)  NULL 
);

CREATE TABLE recommend
(
   recommend_sequence   NUMBER  NOT NULL constraint recommend_sequence_pk primary key ,
   episode_sequence   NUMBER  NOT NULL constraint recommend_episode_fk references episode(episode_sequence) on delete cascade,
   email            VARCHAR2(30)  NOT NULL constraint recommend_email_fk references user_information(email) 
);



create sequence webtoon_seq 
   start with 1
   increment by 1 
   nocache;

create sequence a_f_seq 
   start with 1
   increment by 1 
   nocache;

create sequence a_p_seq 
   start with 1
   increment by 1 
   nocache;

create sequence fund_seq 
   start with 1
   increment by 1 
   nocache;

create sequence episode_seq 
   start with 1
   increment by 1 
   nocache;

create sequence report_seq 
   start with 1
   increment by 1 
   nocache;

create sequence subscription_seq 
   start with 1
   increment by 1 
   nocache;

create sequence cash_history_seq 
   start with 1
   increment by 1 
   nocache;

create sequence recommend_seq 
   start with 1
   increment by 1 
   nocache;

-- sequence drop(delete )

commit;


insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('admin@naver.com','관리자','admin','010-8282-8282',11000,'펀딩작가','관리자','남','000001');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('tiger@hanmail.net','타이거','tiger','01043435454',4000,'독자','임해성','남','900929');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('curry@gmail.com','커리','curry','01044332255',1000,'독자','스테픈커리','남','880314');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('awaynee@hanmail.net','매머드','mammoth','01093441366',1000,'독자','이진석','남','880127');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('kevin@gmail.com','케빈','kevin','01077947798',5000,'독자','케빈듀란트','남','880929');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('leonard@naver.com','레너드','leonard','01077559988',7000,'독자','카와이레너드','남','880127');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('chris@gmail.com','크리스','chris','01011223344',1000,'독자','크리스폴','남','910629');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('lionel@hanmail.net','리오넬','lionel','01033226677',9000,'독자','리오넬메시','남','870624');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('eden@naver.com','에당','eden','01013314554',2000,'독자','에당아자르','남','910107');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('pedro@hanmail.net','페드로','pedro','01099556644',4300,'독자','페드로','남','870728');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('nayeon@naver.com','나연','nayeon','01093441366',1000,'독자','임나연','여','950922');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('dahyeon@gmail.com','다현','dahyeon','01088997788',1000,'독자','김다현','남','980528');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('girlfriend@hanmail.net','유주','girfriend','01034112211',3000,'독자','최유나','남','971004');


insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('boyeong@naver.com','보영','boyeong','01032114622',13000,'작가','박보영','여','900212');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('seulgie@hanmail.net','슬기','seulgie','01022668855',122000,'작가','김슬기','여','911010');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('woori@hanmail.net','우리','woori','01054447788',46000,'작가','고우리','여','880202');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('crystal@hanmail.net','수정','crystal','01076451325',432100,'작가','정수정','여','941024');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('aoa@hanmail.net','설현','aoa','01023226577',32000,'작가','김설현','여','950103');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('byeongjae@gmail.com','병재','byeongjae','01075545553',1000,'펀딩작가','유병재','남','880506');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('goeun@gmail.com','고은','goeun','01053534545',15000,'펀딩작가','김고은','여','910702');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('jei@naver.com','재이','jei','01012126565',11000,'펀딩작가','재이','여','890905');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('hyeri@gmail.com','혜리','hyeri','01022441312',15000,'펀딩작가','이혜리','여','940609');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('minah@naver.com','민아','minah','01099335577',11000,'펀딩작가','방민아','여','930513');

commit;


----

insert into category (category_code, category_name)
values ('A','액션');

insert into category (category_code, category_name)
values ('B','SF');

insert into category (category_code, category_name)
values ('C','판타지');

insert into category (category_code, category_name)
values ('D','드라마');

insert into category (category_code, category_name)
values ('E','스릴러');

insert into category (category_code, category_name)
values ('F','일상');

insert into category (category_code, category_name)
values ('G','개그');

insert into category (category_code, category_name)
values ('H','성인');

insert into category (category_code, category_name)
values ('I','기타');



----------------------------------------------------------------------------


-- webtoon_category_DB 변경하였습니다.

-- 아이디는 설현과 민아를 사용했습니다. user Informatio_DB

-- insert  카테고리 A action webtoon 제목 : 아파트 -  ********   일반작가    *******
commit;

-- webtoon 타이틀 + 제목 
select * from webtoon;

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (1,'아파트','free','serial','A','green', '설현', null, '아파트에서..?!', '/webtoon/webtoonThumbnail/19.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period,summary, webtoon_thumbnail)
values (2,'어게인','funding','serial ','B','green','민아',7,'아파트 괴담','/webtoon/webtoonThumbnail/20.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (3,'26년','funding','complete','C','green', '병재', 7, 'For 26years..?!', '/webtoon/webtoonThumbnail/21.jpg');

--
--------------------------------------------------------------------------------------------------------------------------------------------
----     ******************* Action '아파트' episode 넣기 // 일반 작품   C:\webtoon\action/아파트 폴더안에 이미지 바로 넣기   *****************************
--
--DELETE FROM EPISODE WHERE EPISODE_SEQUENCE = 1
--SELECT * FROM EPISODE;

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 1, 0, 0, '2016-03-02 ', '예고편', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 2, 0, 0, '2016-03-02 ', '제1화 - 아파트_1', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/2.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 3, 0, 0, '2016-03-02 ', '제1화 - 아파트_2', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/3.jpg', null);
insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 4, 0, 0, '2016-03-02 ', '제1화 - 아파트_3', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/4.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 5, 0, 0, '2016-03-02 ', '제1화 - 아파트_4', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/5.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 6, 0, 0, '2016-03-02 ', '제1화 - 아파트_5', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/6.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 7, 0, 0, '2016-03-02 ', '제2화 - 그 남자의 시선_1', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/7.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 8, 0, 0, '2016-03-02 ', '제2화 - 그 남자의 시선_2', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/8.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 9, 0, 0, '2016-03-02 ', '제2화 - 그 남자의 시선_3', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/9.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 10, 0, 0, '2016-03-02 ', '제2화 - 그 남자의 시선_4', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/10.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 11, 0, 0, '2016-03-02 ', '제2화 - 그 남자의 시선_5', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/11.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 12, 0, 0, '2016-03-02 ', '제3화 - 누군가 날 부르고 있다_1', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/12.jpg',null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 13, 0, 0, '2016-03-02 ', '제3화 - 누군가 날 부르고 있다_2', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/13.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 14, 0, 0, '2016-03-02 ', '제3화 - 누군가 날 부르고 있다_3', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/14.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 15, 0, 0, '2016-03-02 ', '제3화 - 누군가 날 부르고 있다_4', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/15.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 16, 0, 0, '2016-03-02 ', '제3화 - 누군가 날 부르고 있다_5', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/16.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 17, 0, 0, '2016-03-02 ', '제6화 - 복도에서_1', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/17.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 18, 0, 0, '2016-03-02 ', '제6화 - 복도에서_2', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/18.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 19, 0, 0, '2016-03-02 ', '제6화 - 복도에서_3', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 20, 0, 0, '2016-03-02 ', '제6화 - 복도에서_4', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/2.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 21, 0, 0, '2016-03-02 ', '제6화 - 복도에서_5', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/3.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 22, 0, 0, '2016-03-02 ', '제7화 - 옆집 여자_1', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/4.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 23, 0, 0, '2016-03-02 ', '제7화 - 옆집 여자_2', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/5.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 24, 0, 0, '2016-03-02 ', '제7화 - 옆집 여자_3', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/6.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 25, 0, 0, '2016-03-02 ', '제7화 - 옆집 여자_4', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/7.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 26, 0, 0, '2016-03-02 ', '제7화 - 옆집 여자_5', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/8.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 27, 0, 0, '2016-03-02 ', '제8화 - 귀신_1', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/9.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 28, 0, 0, '2016-03-02 ', '제8화 - 귀신_2', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/10.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 29, 0, 0, '2016-03-02 ', '제8화 - 귀신_3', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/11.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 30, 0, 0, '2016-03-02 ', '제8화 - 귀신_4', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/12.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 31, 0, 0, '2016-03-02 ', '제8화 - 귀신_5', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/13.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 32, 0, 0, '2016-03-02 ', '제8화 - 귀신_6', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/14.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 33, 0, 0, '2016-03-02 ', '제8화 - 귀신_7', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/15.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 34, 0, 0, '2016-03-02 ', '제8화 - 귀신_8', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/16.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 35, 0, 0, '2016-03-02 ', '제8화 - 귀신_9', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/17.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 36, 0, 0, '2016-03-02 ', '제8화 - 귀신_10', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/18.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 37, 0, 0, '2016-03-02 ', '제8화 - 귀신_11', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 38, 0, 0, '2016-03-02 ', '제8화 - 귀신_12', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/2.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 39, 0, 0, '2016-03-02 ', '제8화 - 귀신_13', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/3.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 40, 0, 0, '2016-03-02 ', '제8화 - 귀신_14', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/4.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 41, 0, 0, '2016-03-02 ', '제8화 - 귀신_15', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/5.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 42, 0, 0, '2016-03-02 ', '제8화 - 귀신_16', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/6.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 43, 0, 0, '2016-03-02 ', '제8화 - 귀신_17', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/7.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 44, 0, 0, '2016-03-02 ', '제8화 - 귀신_18', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/8.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 45, 0, 0, '2016-03-02 ', '제8화 - 귀신_19', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/9.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 46, 0, 0, '2016-03-02 ', '제8화 - 귀신_20', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/10.jpg', null);

--insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
--recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
--values (1, 1, 47, 0, 0, '2016-03-02 ', '1_Apartment2', '작가의말 엘레베이터에서?', null, null);
--insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
--recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
--values (1, 1, 48, 0, 0, '2016-03-02 ', '1_Apartment3', '작가의말 엘레베이터에서?', null, null);
--
--insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
--recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
--values (1, 1, 49, 0, 0, '2016-03-02 ', '1_Apartment4', '작가의말 엘레베이터에서?', null, null);

select * from episode order by episode_sequence

--회차 별 image '아파트' 넣기 \webtoon\action

insert into image(image_index, episode_sequence, file_name) 
values(1, 1, '/webtoon/action/예고편.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 2, '/webtoon/action/제1화 - 아파트_1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 3, '/webtoon/action/제1화 - 아파트_2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 4, '/webtoon/action/제1화 - 아파트_3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 5, '/webtoon/action/제1화 - 아파트_4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 6, '/webtoon/action/제1화 - 아파트_5.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 7, '/webtoon/action/제2화 - 그 남자의 시선_1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 8, '/webtoon/action/제2화 - 그 남자의 시선_2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 9, '/webtoon/action/제2화 - 그 남자의 시선_3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 10, '/webtoon/action/제2화 - 그 남자의 시선_4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 11, '/webtoon/action/제2화 - 그 남자의 시선_5.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 12, '/webtoon/action/제3화 - 누군가 날 부르고 있다_1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 13, '/webtoon/action/제3화 - 누군가 날 부르고 있다_2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 14, '/webtoon/action/제3화 - 누군가 날 부르고 있다_3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 15, '/webtoon/action/제3화 - 누군가 날 부르고 있다_4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 16, '/webtoon/action/제3화 - 누군가 날 부르고 있다_5.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 17, '/webtoon/action/제6화 - 복도에서_1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 18, '/webtoon/action/제6화 - 복도에서_2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 19, '/webtoon/action/제6화 - 복도에서_3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 20, '/webtoon/action/제6화 - 복도에서_4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 21, '/webtoon/action/제6화 - 복도에서_5.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 22, '/webtoon/action/제7화 - 옆집 여자_1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 23, '/webtoon/action/제7화 - 옆집 여자_2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 24, '/webtoon/action/제7화 - 옆집 여자_3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 25, '/webtoon/action/제7화 - 옆집 여자_4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 26, '/webtoon/action/제7화 - 옆집 여자_5.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 27, '/webtoon/action제8화 - 귀신_1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 28, '/webtoon/action/제8화 - 귀신_2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 29, '/webtoon/action/제8화 - 귀신_3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 30, '/webtoon/action/제8화 - 귀신_4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 31, '/webtoon/action/제8화 - 귀신_5.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 32, '/webtoon/action/제8화 - 귀신_6.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 33, '/webtoon/action/제8화 - 귀신_7.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 34, '/webtoon/action/제8화 - 귀신_8.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 35, '/webtoon/action/제8화 - 귀신_9.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 36, '/webtoon/action/제8화 - 귀신_10.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 37, '/webtoon/action/제8화 - 귀신_11.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 38, '/webtoon/action/제8화 - 귀신_12.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 39, '/webtoon/action/제8화 - 귀신_13.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 40, '/webtoon/action/제8화 - 귀신_14.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 41, '/webtoon/action/제8화 - 귀신_15.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 42, '/webtoon/action/제8화 - 귀신_16.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 43, '/webtoon/action/제8화 - 귀신_17.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 44, '/webtoon/action/제8화 - 귀신_18.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 45, '/webtoon/action/제8화 - 귀신_19.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 46, '/webtoon/action/제8화 - 귀신_20.jpg');


select * from episode;
commit;




---***********펀딩웹툰 어게인  6회 ~ 회차별 펀드 모금 


insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,6);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,7);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,8);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,9);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,10);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,11);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,12);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,13);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,14);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,15);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,16);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,17);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,18);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,19);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,20);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,21);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,22);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,23);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,24);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,25);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,26);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,27);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,28);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,29);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,30);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,31);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,32);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,33);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,34);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,35);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,36);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,37);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,38);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,39);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,40);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,41);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,42);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,43);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,44);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,45);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,46);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,47);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,48);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,49);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,50);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,51);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,52);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,53);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,54);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,55);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,56);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,57);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,58);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,59);



select * from fund;


--------------------------------------** fund webtoon-----------------------------------------------------------------------------------------------------------------
insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 1, 0, 0, '2011-01-01', '예고편', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 2, 0, 0, '2011-01-08', '제1화 - 1부 어게인 1화_01', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 3, 0, 0, '2011-01-15', '제1화 - 1부 어게인 1화_02', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 4, 0, 0, '2011-01-22', '제1화 - 1부 어게인 1화_03', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 5, 0, 0, '2011-01-29', '제1화 - 1부 어게인 1화_04', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 6, 0, 0, '2011-02-05', '제1화 - 1부 어게인 1화_05', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 1);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 7, 0, 0, '2011-02-12', '제1화 - 1부 어게인 1화_06', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 2);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 8, 0, 0, '2011-02-19', '제1화 - 1부 어게인 1화_07', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 3);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 9, 0, 0, '2011-02-26', '제1화 - 1부 어게인 1화_08', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 4);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 10, 0, 0, '2011-03-04', '제1화 - 1부 어게인 1화_09', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 5);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 11, 0, 0, '2011-03-11', '제1화 - 1부 어게인 1화_10', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 6);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 12, 0, 0, '2011-03-18', '제2화 - 1부 어게인 2화_01', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 7);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 13, 0, 0, '2011-03-25', '제2화 - 1부 어게인 2화_02', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 8);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 14, 0, 0, '2011-04-01', '제2화 - 1부 어게인 2화_03', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 9);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 15, 0, 0, '2011-04-08', '제2화 - 1부 어게인 2화_04', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 10);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 16, 0, 0, '2011-04-15', '제2화 - 1부 어게인 2화_06', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 11);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 17, 0, 0, '2011-04-22', '제2화 - 1부 어게인 2화_07', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 12);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 18, 0, 0, '2011-04-29', '제2화 - 1부 어게인 2화_08', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 13);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 19, 0, 0, '2011-05-06', '제2화 - 1부 어게인 2화_09', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 14);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 20, 0, 0, '2011-05-13', '제2화 - 1부 어게인 2화_10', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 15);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 21, 0, 0, '2011-05-20', '제2화 - 1부 어게인 2화_11', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 16);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 22, 0, 0, '2011-05-27', '제2화 - 1부 어게인 2화_12', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 17);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 23, 0, 0, '2011-06-03', '제2화 - 1부 어게인 2화_13', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 18);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 24, 0, 0, '2011-06-10', '제2화 - 1부 어게인 2화_14', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 19);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 25, 0, 0, '2011-06-17', '제2화 - 1부 어게인 2화_15', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 20);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 26, 0, 0, '2011-06-23', '제2화 - 1부 어게인 2화_16', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 21);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 27, 0, 0, '2011-06-30', '제2화 - 1부 어게인 2화_17', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 22);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 28, 0, 0, '2011-07-07', '제2화 - 1부 어게인 2화_18', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 23);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 29, 0, 0, '2011-07-09', '제3화 - 1부 어게인 3화_01', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 24);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 30, 0, 0, '2011-07-16', '제3화 - 1부 어게인 3화_02', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 25);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 31, 0, 0, '2011-07-23', '제3화 - 1부 어게인 3화_03', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 26);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 32, 0, 0, '2011-07-30', '제3화 - 1부 어게인 3화_04', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 27);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 33, 0, 0, '2011-08-05', '제3화 - 1부 어게인 3화_05', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 28);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 34, 0, 0, '2011-08-12', '제3화 - 1부 어게인 3화_06', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 29);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 35, 0, 0, '2011-08-19', '제3화 - 1부 어게인 3화_07', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 30);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 36, 0, 0, '2011-08-26', '제3화 - 1부 어게인 3화_08', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 31);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 37, 0, 0, '2011-09-02', '제3화 - 1부 어게인 3화_09', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 32);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 38, 0, 0, '2011-09-09', '제3화 - 1부 어게인 3화_10', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 33);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 39, 0, 0, '2011-09-16', '제4화 - 1부 어게인 4화_01', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 34);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 40, 0, 0, '2011-09-22', '제4화 - 1부 어게인 4화_02', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 35);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 41, 0, 0, '2011-09-29', '제4화 - 1부 어게인 4화_03', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 36);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 42, 0, 0, '2011-10-06', '제4화 - 1부 어게인 4화_04', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 37);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 43, 0, 0, '2011-10-13', '제4화 - 1부 어게인 4화_05', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 38);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 44, 0, 0, '2011-10-20', '제4화 - 1부 어게인 4화_06', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 39);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 45, 0, 0, '2011-10-27', '제4화 - 1부 어게인 4화_07', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 40);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 46, 0, 0, '2011-11-03', '제4화 - 1부 어게인 4화_08', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 41);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 47, 0, 0, '2011-11-10', '제4화 - 1부 어게인 4화_09', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 42);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 48, 0, 0, '2011-11-17', '제4화 - 1부 어게인 4화_10', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 43);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 49, 0, 0, '2011-11-24', '제5화 - 1부 어게인 5화_1', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 44);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 50, 0, 0, '2011-12-02', '제5화 - 1부 어게인 5화_2', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 45);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 51, 0, 0, '2011-12-09', '제5화 - 1부 어게인 5화_3', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 46);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 52, 0, 0, '2011-12-16', '제5화 - 1부 어게인 5화_4', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 47);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 53, 0, 0, '2011-12-23', '제5화 - 1부 어게인 5화_5', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 48);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 54, 0, 0, '2011-12-30', '제5화 - 1부 어게인 5화_6', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 49);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 55, 0, 0, '2012-01-06 ', '제5화 - 1부 어게인 5화_7', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 50);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 56, 0, 0, '2012-01-13', '제5화 - 1부 어게인 5화_8', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 51);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 57, 0, 0, '2012-01-20', '제5화 - 1부 어게인 5화_9', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 52);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 58, 0, 0, '2012-01-27', '제5화 - 1부 어게인 5화_10', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 53);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 59, 0, 0, '2012-02-03', '제5화 - 1부 어게인 5화_11', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', 54);

--select * from episode where webtoon_code=2 order by episode_sequence;

--------------------- c:/webtoon/sf/어게인 이미지 모두 다  예고편 포함 59개   -----------------------------------------------------------------------------
--delete From image;

insert into image(image_index, episode_sequence, file_name) 
values(1, 47, '/webtoon/sf/예고편.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 48, '/webtoon/sf/제1화 - 1부 어게인 1화_01.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 49, '/webtoon/sf/제1화 - 1부 어게인 1화_02.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 50, '/webtoon/sf/제1화 - 1부 어게인 1화_03.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 51, '/webtoon/sf/제1화 - 1부 어게인 1화_04.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 52, '/webtoon/sf/제1화 - 1부 어게인 1화_05.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 53, '/webtoon/sf/제1화 - 1부 어게인 1화_06.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 54, '/webtoon/sf/제1화 - 1부 어게인 1화_07.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 55, '/webtoon/sf/제1화 - 1부 어게인 1화_08.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 56, '/webtoon/sf/제1화 - 1부 어게인 1화_09.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 57, '/webtoon/sf/제1화 - 1부 어게인 1화_10.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 58, '/webtoon/sf/제2화 - 1부 어게인 2화_01.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 59, '/webtoon/sf/제2화 - 1부 어게인 2화_02.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 60, '/webtoon/sf/제2화 - 1부 어게인 2화_03.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 61, '/webtoon/sf/제2화 - 1부 어게인 2화_04.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 62, '/webtoon/sf/제2화 - 1부 어게인 2화_05.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 63, '/webtoon/sf/제2화 - 1부 어게인 2화_06.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 64, '/webtoon/sf/제2화 - 1부 어게인 2화_07.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 65, '/webtoon/sf/제2화 - 1부 어게인 2화_08.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 66, '/webtoon/sf/제2화 - 1부 어게인 2화_09.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 67, '/webtoon/sf/제2화 - 1부 어게인 2화_10.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 68, '/webtoon/sf/제2화 - 1부 어게인 2화_11.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 69, '/webtoon/sf/제2화 - 1부 어게인 2화_12.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 70, '/webtoon/sf/제2화 - 1부 어게인 2화_13.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 71, '/webtoon/sf/제2화 - 1부 어게인 2화_14.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 72, '/webtoon/sf/제2화 - 1부 어게인 2화_15.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 73, '/webtoon/sf/제2화 - 1부 어게인 2화_16.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 74, '/webtoon/sf/제2화 - 1부 어게인 2화_17.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 75, '/webtoon/sf/제2화 - 1부 어게인 2화_18.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 76, '/webtoon/sf/제3화 - 1부 어게인 3화_01.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 77, '/webtoon/sf/제3화 - 1부 어게인 3화_02.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 78, '/webtoon/sf/제3화 - 1부 어게인 3화_03.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 79, '/webtoon/sf/제3화 - 1부 어게인 3화_04.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 80, '/webtoon/sf/제3화 - 1부 어게인 3화_05.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 81, '/webtoon/sf/제3화 - 1부 어게인 3화_06.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 82, '/webtoon/sf/제3화 - 1부 어게인 3화_07.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 83, '/webtoon/sf/제3화 - 1부 어게인 3화_08.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 84, '/webtoon/sf/제3화 - 1부 어게인 3화_09.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 85, '/webtoon/sf/제3화 - 1부 어게인 3화_10.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 86, '/webtoon/sf/제4화 - 1부 어게인 4화_01.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 87, '/webtoon/sf/제4화 - 1부 어게인 4화_02.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 88, '/webtoon/sf/제4화 - 1부 어게인 4화_03.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 89, '/webtoon/sf/제4화 - 1부 어게인 4화_04.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 90, '/webtoon/sf/제4화 - 1부 어게인 4화_05.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 91, '/webtoon/sf/제4화 - 1부 어게인 4화_06.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 92, '/webtoon/sf/제4화 - 1부 어게인 4화_07.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 93, '/webtoon/sf/제4화 - 1부 어게인 4화_08.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 94, '/webtoon/sf/제4화 - 1부 어게인 4화_09.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 95, '/webtoon/sf/제5화 - 1부 어게인 5화_01.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 96, '/webtoon/sf/제5화 - 1부 어게인 5화_02.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 97, '/webtoon/sf/제5화 - 1부 어게인 5화_03.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 98, '/webtoon/sf/제5화 - 1부 어게인 5화_04.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 99, '/webtoon/sf/제5화 - 1부 어게인 5화_05.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 100, '/webtoon/sf/제5화 - 1부 어게인 5화_06.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 101, '/webtoon/sf/제5화 - 1부 어게인 5화_07.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 102, '/webtoon/sf/제5화 - 1부 어게인 5화_08.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 103, '/webtoon/sf/제5화 - 1부 어게인 5화_09.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 104, '/webtoon/sf/제5화 - 1부 어게인 5화_10.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 105, '/webtoon/sf/제5화 - 1부 어게인 5화_11.jpg');

--select * from episode;
--select * from image;
--commit;



-- fantasy insert 하기

-- webtoon 타이틀 + 제목 

--insert into webtoon
--(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
--values (3,'26년','funding','complete','C','green', '병재', 7, 'For 26years..?!', /webtoon/webtoonThumbnail/21.jpg);


---------웹툰 26년의 펀딩 ------------------------------

select * from fund order by fund_code;


insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,6);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,7);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,8);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,9);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,10);


insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,11);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,12);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,13);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,14);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,15);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,16);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,17);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,18);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,19);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,20);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,21);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,22);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,23);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,24);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,25);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,26);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,27);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,28);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,29);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,30);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,31);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,32);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,33);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,34);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,35);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,36);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,37);


insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,38);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,39);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,40);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,41);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,42);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,43);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,44);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,45);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,46);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,47);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,48);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,49);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,50);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,51);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,52);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,53);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,54);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,55);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,56);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,57);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,58);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,59);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,60);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,61);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,62);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,63);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,64);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,65);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,66);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,67);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,68);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,69);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,70);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,71);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,72);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,73);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,74);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,75);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,76);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,77);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,78);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,79);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,80);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,81);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,82);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,83);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,84);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,85);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,86);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,87);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,88);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,89);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,90);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,91);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,92);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,93);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,94);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,95);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,96);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,97);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,98);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,99);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,100);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,101);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,102);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,103);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,104);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,105);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,106);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,107);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,108);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,109);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,110);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,111);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,112);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,113);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,114);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,115);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,116);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,117);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,118);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,119);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,120);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,121);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,122);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,123);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,124);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,125);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,126);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,127);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,128);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,3,129);

select * from fund;
--------------------------------------------------------------------------------------------

select * from episode;

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 1, 0, 0, '2009-01-01', '예고편', '인트로', '/webtoon/episodeThumbnail/1.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 2, 0, 0, '2009-01-08', '26년을 이야기한다-1', '26년이야', '/webtoon/episodeThumbnail/1.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 3, 0, 0, '2009-01-15', '26년을 이야기한다-2', '26년이야', '/webtoon/episodeThumbnail/1.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 4, 0, 0, '2009-01-22', '26년을 이야기한다-3', '26년이야', '/webtoon/episodeThumbnail/1.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 5, 0, 0, '2009-01-29', '제1화 그 죽음을 기억하라-1', '26년이야', '/webtoon/episodeThumbnail/1.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 6, 0, 0, '2009-02-05', '제1화 그 죽음을 기억하라-2', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 55);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 7, 0, 0, '2009-02-12', '제2화 단절되지 않는 아픔-1', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 56);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 8, 0, 0, '2009-02-19', '제2화 단절되지 않는 아픔-2', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 57);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 9, 0, 0, '2009-02-26', '제2화 단절되지 않는 아픔-3', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 58);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 10, 0, 0, '2009-03-05', '제2화 단절되지 않는 아픔-4', '작가의말 26년이야', '/webtoon/episodeThumbnail/1.jpg', 59);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 11, 0, 0, '2009-03-12', '제3화 상처는 깊은 흉터를 남긴다-1', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 60);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 12, 0, 0, '2009-03-19', '제3화 상처는 깊은 흉터를 남긴다-2', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 61);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 13, 0, 0, '2009-03-26', '제3화 상처는 깊은 흉터를 남긴다-3', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 62);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 14, 0, 0, '2009-04-02', '제3화 상처는 깊은 흉터를 남긴다-4', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 63);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 15, 0, 0, '2009-04-09', '제4화 일어서는 사람들-1', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 64);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 16, 0, 0, '2009-04-16', '제4화 일어서는 사람들-2', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 65);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 17, 0, 0, '2009-04-23', '제4화 일어서는 사람들-3', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 66);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 18, 0, 0, '2009-04-30', '제4화 일어서는 사람들-4', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 67);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 19, 0, 0, '2009-05-07', '제5화 길 위에 서다-1', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 68);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 20, 0, 0, '2009-05-14', '제5화 길 위에 서다-2', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 69);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 21, 0, 0, '2009-05-21', '제5화 길 위에 서다-3', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 70);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 22, 0, 0, '2009-05-28', '제6화 죽은 사람이 산 사람에게-1', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 71);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 23, 0, 0, '2009-06-04', '제6화 죽은 사람이 산 사람에게-2', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 72);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 24, 0, 0, '2009-06-11', '제6화 죽은 사람이 산 사람에게-3', '26년이야?', '/webtoon/episodeThumbnail/1.jpg', 73);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 25, 0, 0, '2009-06-18', '제6화 죽은 사람이 산 사람에게-4', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 74);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 26, 0, 0, '2009-06-25', '제7화 시대에 휩쓸린 사람들-1', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 75);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 27, 0, 0, '2009-07-02', '제7화 시대에 휩쓸린 사람들-2', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 76);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 28, 0, 0, '2009-07-09', '제7화 시대에 휩쓸린 사람들-3', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 77);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 29, 0, 0, '2009-07-16', '제7화 시대에 휩쓸린 사람들-4', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 78);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 30, 0, 0, '2009-07-23', '제7화 시대에 휩쓸린 사람들-5', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 79);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 31, 0, 0, '2009-07-30', '제7화 시대에 휩쓸린 사람들-6', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 80);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 32, 0, 0, '2009-08-06', '제9화 사람과 사람과 사람들-1', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 81);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 33, 0, 0, '2009-08-13', '제9화 사람과 사람과 사람들-2', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 82);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 34, 0, 0, '2009-08-20', '제9화 사람과 사람과 사람들-3', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 83);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 35, 0, 0, '2009-08-27', '제10화 가슴에 돋는 칼로 슬픔을-1', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 84);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 36, 0, 0, '2009-09-03', '제10화 가슴에 돋는 칼로 슬픔을-2', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 85);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 37, 0, 0, '2009-09-10', '제10화가슴에 돋는 칼로 슬픔을-3', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 86);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 38, 0, 0, '2009-09-17', '제10화 가슴에 돋는 칼로 슬픔을-4', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 87);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 39, 0, 0, '2009-09-23', '제11화 도발-1', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 88);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 40, 0, 0, '2009-09-30', '제11화 도발-2', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 89);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 41, 0, 0, '2009-10-07', '제11화 도발-3', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 90);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 42, 0, 0, '2009-10-15', '제11화 도발-4', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 91);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 43, 0, 0, '2009-10-22', '제11화 도발-5', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 92);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 44, 0, 0, '2009-10-29', '제12화 좁혀드는 시선-1', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 93);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 45, 0, 0, '2009-11-05', '제12화 좁혀드는 시선-2', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 94);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 46, 0, 0, '2009-11-12', '제12화 좁혀드는 시선-3', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 95);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 47, 0, 0, '2009-11-19', '제12화 좁혀드는 시선-4', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 96);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 48, 0, 0, '2009-11-26', '제13화 작용과 반작용-1', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 97);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 49, 0, 0, '2009-12-03', '제13화 작용과 반작용-2', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 98);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 50, 0, 0, '2009-12-10', '제13화 작용과 반작용-3', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 99);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 51, 0, 0, '2009-12-17', '제14화 햇빛 쏟아지는 거리-1', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 100);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 52, 0, 0, '2009-12-23', '제14화 햇빛 쏟아지는 거리-2', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 101);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 53, 0, 0, '2009-12-30', '제14화 햇빛 쏟아지는 거리-3', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 102);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 54, 0, 0, '2010-01-06', '제14화 햇빛 쏟아지는 거리-4', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 103);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 55, 0, 0, '2010-01-13', '제15화 되돌아오는 진실-1', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 104);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 56, 0, 0, '2010-01-20', '제15화 되돌아오는 진실-2', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 105);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 57, 0, 0, '2010-01-27', '제15화 되돌아오는 진실-3', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 106);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 58, 0, 0, '2010-02-03', '제15화 되돌아오는 진실-4', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 107);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 59, 0, 0, '2010-02-10', '제16화 또 다른 계획-1', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 108);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 60, 0, 0, '2010-02-17', '제16화 또 다른 계획-2', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 109);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 61, 0, 0, '2010-02-24', '제16화 또 다른 계획-3', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 110);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 62, 0, 0, '2010-03-03', '제16화 또 다른 계획-4', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 111);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 63, 0, 0, '2010-03-10', '제16화 또 다른 계획-5', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 112);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 64, 0, 0, '2010-03-17', '제17화 가능과 불가능-1', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 113);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 65, 0, 0, '2010-03-24', '제17화 가능과 불가능-2', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 114);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 66, 0, 0, '2010-03-31', '제17화 가능과 불가능-3', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 115);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 67, 0, 0, '2010-04-07', '제18화 빨간 신호등-1', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 116);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 68, 0, 0, '2010-04-14', '제18화 빨간 신호등-2', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 117);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 69, 0, 0, '2010-04-21', '제18화 빨간 신호등-3', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 118);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 70, 0, 0, '2010-04-28', '제18화 빨간 신호등-4', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 119);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 71, 0, 0, '2010-05-05', '제18화 빨간 신호등-5', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 120);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 72, 0, 0, '2010-05-12', '제19화 시대는 아직도 아프다-1', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 121);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 73, 0, 0, '2010-05-19', '제19화 시대는 아직도 아프다-2', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 122);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 74, 0, 0, '2010-05-26', '제19화 시대는 아직도 아프다-3', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 123);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 75, 0, 0, '2010-06-03', '제19화 시대는 아직도 아프다-4', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 124);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 76, 0, 0, '2010-06-10', '제19화 시대는 아직도 아프다-5', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 125);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 77, 0, 0, '2010-06-17', '제20화 그렇지만 다시 일어나-1', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 126);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 78, 0, 0, '2010-06-24', '제20화 그렇지만 다시 일어나-2', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 127);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 79, 0, 0, '2010-07-31', '제20화 그렇지만 다시 일어나-3', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 128);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 80, 0, 0, '2010-08-07', '제20화 그렇지만 다시 일어나-4', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 129);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 81, 0, 0, '2010-08-15', '제20화 그렇지만 다시 일어나-5', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 130);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 82, 0, 0, '2010-08-22', '제21화 등 뒤의 시선-1', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 131);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 83, 0, 0, '2010-08-29', '제21화 등 뒤의 시선-2', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 132);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 84, 0, 0, '2010-09-05', '제21화 등 뒤의 시선-3', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 133);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 85, 0, 0, '2010-09-12', '제21화 등 뒤의 시선-4', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 134);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 86, 0, 0, '2010-09-19', '제22화 늦게 오는 봄-1', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 135);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 87, 0, 0, '2010-09-26', '제22화 늦게 오는 봄-2', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 136);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 88, 0, 0, '2010-10-03', '제22화 늦게 오는 봄-3', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 137);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 89, 0, 0, '2010-10-10', '제22화 늦게 오는 봄-4', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 138);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 90, 0, 0, '2010-10-17', '제22화 늦게 오는 봄-5', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 139);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 91, 0, 0, '2010-10-24', '제23화 어제 죽은 내일-1', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 140);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 92, 0, 0, '2010-10-31', '제23화 어제 죽은 내일-2', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 141);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 93, 0, 0, '2010-11-07', '제23화 어제 죽은 내일-3', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 142);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 94, 0, 0, '2010-11-14', '제24화 오늘을 사는 사람들-1', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 143);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 95, 0, 0, '2010-11-21', '제24화 오늘을 사는 사람들-2', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 144);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 96, 0, 0, '2010-11-28', '제25화 그대 그날을 기억하는가-1', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 145);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 97, 0, 0, '2010-12-05', '제25화 그대 그날을 기억하는가-2', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 146);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 98, 0, 0, '2010-12-12', '제25화 그대 그날을 기억하는가-3', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 147);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 99, 0, 0, '2010-12-19', '제25화 그대 그날을 기억하는가-4', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 148);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 100, 0, 0, '2010-12-26', '제25화 그대 그날을 기억하는가-5', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 149);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 101, 0, 0, '2011-01-02', '제25화 그대 그날을 기억하는가-6', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 150);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 102, 0, 0, '2011-01-09', '제25화 그대 그날을 기억하는가-7', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 151);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 103, 0, 0, '2011-01-16', '제26화 서럽다 뉘 말하는가-1', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 152);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 104, 0, 0, '2011-01-23', '제26화 서럽다 뉘 말하는가-2', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 153);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 105, 0, 0, '2011-01-30', '제26화 서럽다 뉘 말하는가-3', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 154);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	 
values (episode_seq.NEXTVAL, 3, 106, 0, 0, '2011-02-06', '제26화 서럽다 뉘 말하는가-4', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 155);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 107, 0, 0, '2011-02-13', '제26화 서럽다 뉘 말하는가-5', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 156);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 108, 0, 0, '2011-02-20', '제26화 서럽다 뉘 말하는가-6', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 157);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 109, 0, 0, '2011-02-27', '제26화 서럽다 뉘 말하는가-7', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 158);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 110, 0, 0, '2011-03-06', '제27화 돌아오지 않는 봄-1', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 159);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 111, 0, 0, '2011-03-13', '제27화 돌아오지 않는 봄-2', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 160);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 112, 0, 0, '2011-03-20', '제27화 돌아오지 않는 봄-3', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 161);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 113, 0, 0, '2011-03-27', '제27화 돌아오지 않는 봄-4', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 162);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 114, 0, 0, '2011-04-03', '제27화 돌아오지 않는 봄-5', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 163);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 115, 0, 0, '2011-04-10', '제27화 돌아오지 않는 봄-6', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 164);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 116, 0, 0, '2011-04-17', '제27화 돌아오지 않는 봄-7', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 165);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 117, 0, 0, '2011-04-24', '제28화 마른 잎 다시 살아나-1', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 166);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 118, 0, 0, '2011-05-01', '제28화 마른 잎 다시 살아나-2', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 167);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 119, 0, 0, '2011-05-08', '제28화 마른 잎 다시 살아나-3', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 168);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 120, 0, 0, '2011-05-15', '제28화 마른 잎 다시 살아나-4', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 169);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 121, 0, 0, '2011-05-22', '제28화 마른 잎 다시 살아나-5', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 170);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 122, 0, 0, '2011-05-29', '제28화 마른 잎 다시 살아나-6', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 171);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 123, 0, 0, '2011-06-05', '제28화 마른 잎 다시 살아나-7', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 172);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 124, 0, 0, '2011-06-12', '제28화 마른 잎 다시 살아나-8', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 173);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 125, 0, 0, '2011-06-19', '제28화 마른 잎 다시 살아나-9', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 174);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 126, 0, 0, '2011-06-26', '제28화 마른 잎 다시 살아나-10', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 175);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 127, 0, 0, '2011-07-03', '제28화 마른 잎 다시 살아나-11', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 176);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 128, 0, 0, '2011-07-10', '제28화 마른 잎 다시 살아나-12', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 177);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 129, 0, 0, '2011-07-17', '제28화 마른 잎 다시 살아나-13', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 178);


--------table image 
  --- 26년 회차 이미지 
---C:/webtoon/fantasy/

--select * from episode where episode_sequence>105 order by episode_sequence;
--select * from image; 

insert into image(image_index, episode_sequence, file_name) 
values(1, 106, '/webtoon/fantasy/26년을 이야기한다-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 107, '/webtoon/fantasy/26년을 이야기한다-2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 108, '/webtoon/fantasy/26년을 이야기한다-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 109, '/webtoon/fantasy/과거를 잊지 말아라.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 110, '/webtoon/fantasy/제1화 그 죽음을 기억하라-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 111, '/webtoon/fantasy/제1화 그 죽음을 기억하라-2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 112, '/webtoon/fantasy/제2화 단절되지 않는 아픔-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 113, '/webtoon/fantasy/제2화 단절되지 않는 아픔-2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 114, '/webtoon/fantasy/제2화 단절되지 않는 아픔-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 115, '/webtoon/fantasy/제2화 단절되지 않는 아픔-4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 116, '/webtoon/fantasy/제3화 상처는 깊은 흉터를 남긴다-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 117, '/webtoon/fantasy/제3화 상처는 깊은 흉터를 남긴다-2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 118, '/webtoon/fantasy/제3화 상처는 깊은 흉터를 남긴다-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 119, '/webtoon/fantasy/제3화 상처는 깊은 흉터를 남긴다-4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 120, '/webtoon/fantasy/제4화 일어서는 사람들-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 121, '/webtoon/fantasy/제4화 일어서는 사람들-2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 122, '/webtoon/fantasy/제4화 일어서는 사람들-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 123, '/webtoon/fantasy/제4화 일어서는 사람들-4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 124, '/webtoon/fantasy/제5화 길 위에 서다-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 125, '/webtoon/fantasy/제5화 길 위에 서다-2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 126, '/webtoon/fantasy/제5화 길 위에 서다-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 127, '/webtoon/fantasy/제6화 죽은 사람이 산 사람에게-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 128, '/webtoon/fantasy/제6화 죽은 사람이 산 사람에게-2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 129, '/webtoon/fantasy/제6화 죽은 사람이 산 사람에게-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 130, '/webtoon/fantasy/제6화 죽은 사람이 산 사람에게-4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 131, '/webtoon/fantasy제7화 시대에 휩쓸린 사람들-.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 132, '/webtoon/fantasy/제7화 시대에 휩쓸린 사람들-2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 133, '/webtoon/fantasy/제7화 시대에 휩쓸린 사람들-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 134, '/webtoon/fantasy/제8화 시대에 휩쓸린 사람들-4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 135, '/webtoon/fantasy/제8화 시대에 휩쓸린 사람들-5.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 136, '/webtoon/fantasy/제8화 시대에 휩쓸린 사람들-6.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 137, '/webtoon/fantasy/제9화 사람과 사람과 사람들-1.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 138, '/webtoon/fantasy/제9화 사람과 사람과 사람들-2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 139, '/webtoon/fantasy/제9화 사람과 사람과 사람들-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 140, '/webtoon/fantasy/제10화 가슴에 돋는 칼로 슬픔을-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 141, '/webtoon/fantasy/제10화 가슴에 돋는 칼로 슬픔을-2.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 142, '/webtoon/fantasy/제10화 가슴에 돋는 칼로 슬픔을-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 143, '/webtoon/fantasy/제10화 가슴에 돋는 칼로 슬픔을-4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 144, '/webtoon/fantasy/제11화 도발-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 145, '/webtoon/fantasy/제11화 도발-2.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 146, '/webtoon/fantasy/제11화 도발-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 147, '/webtoon/fantasy/제11화 도발-4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 148, '/webtoon/fantasy/제11화 도발-5.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 149, '/webtoon/fantasy/제12화 좁혀드는 시선-1.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 150, '/webtoon/fantasy/제12화 좁혀드는 시선-2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 151, '/webtoon/fantasy/제12화 좁혀드는 시선-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 152, '/webtoon/fantasy/제12화 좁혀드는 시선-4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 153, '/webtoon/fantasy/제13화 작용과 반작용-1.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 154, '/webtoon/fantasy/제13화 작용과 반작용-2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 155, '/webtoon/fantasy/제13화 작용과 반작용-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 156, '/webtoon/fantasy/제14화 햇빛 쏟아지는 거리-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 157, '/webtoon/fantasy/제14화 햇빛 쏟아지는 거리-2.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 158, '/webtoon/fantasy/제14화 햇빛 쏟아지는 거리-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 159, '/webtoon/fantasy/제14화 햇빛 쏟아지는 거리-4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 160, '/webtoon/fantasy/제15화 되돌아오는 진실-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 161, '/webtoon/fantasy/제15화 되돌아오는 진실-2.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 162, '/webtoon/fantasy/제15화 되돌아오는 진실-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 163, '/webtoon/fantasy/제15화 되돌아오는 진실-4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 164, '/webtoon/fantasy/제16화 또 다른 계획-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 165, '/webtoon/fantasy/제16화 또 다른 계획-2.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 166, '/webtoon/fantasy/제16화 또 다른 계획-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 167, '/webtoon/fantasy/제16화 또 다른 계획-4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 168, '/webtoon/fantasy/제16화 또 다른 계획-5.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 169, '/webtoon/fantasy/제17화 가능과 불가능-1.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 170, '/webtoon/fantasy/제17화 가능과 불가능-2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 171, '/webtoon/fantasy/제17화 가능과 불가능-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 172, '/webtoon/fantasy/제18화 빨간 신호등-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 173, '/webtoon/fantasy/제18화 빨간 신호등-2.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 174, '/webtoon/fantasy/제18화 빨간 신호등-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 175, '/webtoon/fantasy/제18화 빨간 신호등-4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 176, '/webtoon/fantasy/제18화 빨간 신호등-5.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 177, '/webtoon/fantasy/제19화 시대는 아직도 아프다-1.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 178, '/webtoon/fantasy/제19화 시대는 아직도 아프다-2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 179, '/webtoon/fantasy/제19화 시대는 아직도 아프다-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 180, '/webtoon/fantasy/제19화 시대는 아직도 아프다-4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 181, '/webtoon/fantasy/제19화 시대는 아직도 아프다-5.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 182, '/webtoon/fantasy/제20화 그렇지만 다시 일어나-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 183, '/webtoon/fantasy/제20화 그렇지만 다시 일어나-2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 184, '/webtoon/fantasy/제20화 그렇지만 다시 일어나-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 185, '/webtoon/fantasy/제20화 그렇지만 다시 일어나-4.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 186, '/webtoon/fantasy/제20화 그렇지만 다시 일어나-5.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 187, '/webtoon/fantasy/제21화 등 뒤의 시선-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 188, '/webtoon/fantasy/제21화 등 뒤의 시선-2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 189, '/webtoon/fantasy/제21화 등 뒤의 시선-3.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 190, '/webtoon/fantasy/제21화 등 뒤의 시선-4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 191, '/webtoon/fantasy/제22화 늦게 오는 봄-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 192, '/webtoon/fantasy/제22화 늦게 오는 봄-2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 193, '/webtoon/fantasy/제22화 늦게 오는 봄-3.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 194, '/webtoon/fantasy/제22화 늦게 오는 봄-4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 195, '/webtoon/fantasy/제22화 늦게 오는 봄-5.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 196, '/webtoon/fantasy/제23화 어제 죽은 내일-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 197, '/webtoon/fantasy/제23화 어제 죽은 내일-2.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 198, '/webtoon/fantasy/제23화 어제 죽은 내일-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 199, '/webtoon/fantasy/제24화 오늘을 사는 사람들-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 200, '/webtoon/fantasy/제24화 오늘을 사는 사람들-2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 201, '/webtoon/fantasy/제25화 그대 그날을 기억하는가-1.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 202, '/webtoon/fantasy/제25화 그대 그날을 기억하는가-2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 203, '/webtoon/fantasy/제25화 그대 그날을 기억하는가-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 204, '/webtoon/fantasy/제25화 그대 그날을 기억하는가-4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 205, '/webtoon/fantasy/제25화 그대 그날을 기억하는가-5.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 206, '/webtoon/fantasy/제25화 그대 그날을 기억하는가-6.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 207, '/webtoon/fantasy/제25화 그대 그날을 기억하는가-7.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 208, '/webtoon/fantasy/제26화 서럽다 뉘 말하는가-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 209, '/webtoon/fantasy/제26화 서럽다 뉘 말하는가-2.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 210, '/webtoon/fantasy/제26화 서럽다 뉘 말하는가-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 211, '/webtoon/fantasy/제26화 서럽다 뉘 말하는가-4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 212, '/webtoon/fantasy/제26화 서럽다 뉘 말하는가-5.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 213, '/webtoon/fantasy/제26화 서럽다 뉘 말하는가-6.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 214, '/webtoon/fantasy/제26화 서럽다 뉘 말하는가-7.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 215, '/webtoon/fantasy/제27화 돌아오지 않는 봄-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 216, '/webtoon/fantasy/제27화 돌아오지 않는 봄-2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 217, '/webtoon/fantasy/제27화 돌아오지 않는 봄-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 218, '/webtoon/fantasy/제27화 돌아오지 않는 봄-4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 219, '/webtoon/fantasy/제27화 돌아오지 않는 봄-5.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 220, '/webtoon/fantasy/제27화 돌아오지 않는 봄-6.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 221, '/webtoon/fantasy/제27화 돌아오지 않는 봄-7.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 222, '/webtoon/fantasy/제28화 마른 잎 다시 살아나-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 223, '/webtoon/fantasy/제28화 마른 잎 다시 살아나-2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 224, '/webtoon/fantasy/제28화 마른 잎 다시 살아나-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 225, '/webtoon/fantasy/제28화 마른 잎 다시 살아나-4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 226, '/webtoon/fantasy/제28화 마른 잎 다시 살아나-5.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 227, '/webtoon/fantasy/제28화 마른 잎 다시 살아나-6.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 228, '/webtoon/fantasy/제28화 마른 잎 다시 살아나-7.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 229, '/webtoon/fantasy/제28화 마른 잎 다시 살아나-8.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 230, '/webtoon/fantasy/제28화 마른 잎 다시 살아나-9.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 231, '/webtoon/fantasy/제28화 마른 잎 다시 살아나-10.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 232, '/webtoon/fantasy/제28화 마른 잎 다시 살아나-11.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 233, '/webtoon/fantasy/제28화 마른 잎 다시 살아나_12.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 234, '/webtoon/fantasy/제28화 마른 잎 다시 살아나_13.jpg');










--유저 정보 테이블
--user_level : 독자, 작가, 펀딩작가
select * from tab;

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

insert into USER_INFORMATION(email, nickname, password, phone, name, gender, birth_date) 
values('test@google.com', 'test123', '1234', '010-114-1114', '메르시', '여자', '900929')

select * from USER_INFORMATION

drop table user_information;

--작가페이지 개설시 추가정보 기입
CREATE TABLE additional_info
(
	email                 VARCHAR2(30)  NOT NULL constraint additional_info_email_fk references user_information(email),
	account_password      VARCHAR2(20)  NOT NULL ,
	bank_name			  VARCHAR2(30)  NOT NULL ,
	account_number        VARCHAR2(20)  NOT NULL ,
	identification_card   VARCHAR2(100)  NOT NULL ,
	constraint additional_info_email_pk primary key(email) 
);

insert into additional_info(email, account_password, account_number, identification_card) 
values('test@google.com', '123456', '1002-022-123456', '신분증이미지주소')

select * from additional_info;

drop table additional_info

--카테고리 정보
CREATE TABLE category
(
	category_code         VARCHAR2(10)  NOT NULL constraint category_code_pk primary key,
	category_name         VARCHAR2(10)  NULL 
);

insert into category(category_code, category_name) 
values('A', '로맨스');

 

select * from category;

drop table category


--웹툰 정보 테이블
--level : 일반(free), 펀딩(punding), 유료(paid)
--state : 연재, 휴재, 블라인드, 연재완료 ( serial , pause, blind, complete
--penalty : green, yello, red
CREATE TABLE webtoon
(
	webtoon_code          NUMBER  NOT NULL constraint webtoon_code_pk primary key,
	webtoon_name          VARCHAR2(50)  NOT NULL ,
	webtoon_level         VARCHAR2(10)  default 'free' ,
	webtoon_state         VARCHAR2(10)  default 'serial' ,
	category_code         VARCHAR2(10)  NOT NULL constraint webtoon_category_fk references category(category_code) on delete cascade,
	penalty               VARCHAR2(10)  default 'green',
	nickname               VARCHAR2(30)  NOT NULL constraint webtoon_nickname_fk references user_information(nickname),
	funding_period        NUMBER  NULL ,
	summary               VARCHAR2(200)  NULL ,
	webtoon_thumbnail	  VARCHAR2(100) NULL 
);

create sequence webtoon_seq 
	start with 1
	increment by 1 
	nocache;

drop sequence webtoon_seq;	
	
insert into webtoon(webtoon_code, webtoon_name, category_code, nickname, funding_period, summary, webtoon_thumbnail) 
values('AAA', '더미1', 'A', 'test123', 1, null, 'thumbnail')

drop table webtoon;


select * from webtoon order by webtoon_code;
--펀딩 웹툰 신청 테이블
CREATE TABLE apply_fund
(
	apply_fund_sequence   NUMBER  NOT NULL constraint apply_fund_sequence_pk primary key,
	email                 VARCHAR2(30)  NOT NULL constraint apply_fund_email_fk references user_information(email),
	webtoon_code          NUMBER  NOT NULL constraint apply_fund_webtoon_fk references webtoon(webtoon_code) on delete cascade,
	score                 NUMBER  NULL 
);

create sequence a_f_seq 
	start with 1
	increment by 1 
	nocache;


drop sequence a_f_seq;

drop table apply_fund;

insert into apply_fund(apply_fund_sequence, email, webtoon_code, score) 
values(a_f_seq.nextval)


--연재 완료된 펀딩웹툰의 유료화 신청
CREATE TABLE apply_paid
(
	apply_paid_sequence   NUMBER  NOT NULL constraint apply_paid_sequence_pk primary key,
	email                 VARCHAR2(30)  NOT NULL constraint apply_paid_email_fk references user_information(email),
	webtoon_code          NUMBER  NOT NULL constraint apply_paid_webtoon_fk references webtoon(webtoon_code) on delete cascade
);

create sequence a_p_seq 
	start with 1
	increment by 1 
	nocache;
	
drop sequence a_p_seq;

drop table apply_paid;

select * from apply_paid;


--펀딩웹툰의 펀딩 테이블
CREATE TABLE fund
(
	fund_code		NUMBER  NOT NULL constraint fund_code_pk primary key ,
	episode_fund	NUMBER  NULL  ,
	webtoon_code	NUMBER  NOT NULL constraint fund_webtoon_code_fk references webtoon(webtoon_code) on delete cascade,
	episode_number  NUMBER  NULL
);

create sequence fund_seq 
	start with 1
	increment by 1 
	nocache;

drop sequence fund_seq;

drop table fund;


--에피소드 정보 테이블
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
	fund_code			  NUMBER  NULL constraint episode_fund_code_fk references fund(fund_code) on delete cascade
);

create sequence episode_seq 
	start with 1
	increment by 1 
	nocache;

drop sequence episode_seq;

drop table episode;	


--에피소드마다 이미지 테이블
CREATE TABLE image
(
	image_index           NUMBER  NOT NULL ,
	episode_sequence      NUMBER  NOT NULL constraint image_episode_sequence references episode(episode_sequence) on delete cascade,
	file_name             VARCHAR2(100)  NULL ,
	constraint image_pk primary key(image_index, episode_sequence)
);

drop table image;


--펀딩 시작과 마감시간
CREATE TABLE fund_time_limit
(
   start_date            DATE  NOT NULL ,
   due_date              DATE  NOT NULL ,
   episode_sequence      NUMBER  NOT NULL constraint time_limit_episode_fk references episode(episode_sequence) on delete cascade ,
   constraint time_limit_episode_pk primary key(episode_sequence)
);


drop table fund_time_limit;

--해당 에피소드의 펀딩 내역
CREATE TABLE pay_history
(
	email                 VARCHAR2(30)  NOT NULL constraint pay_history_email_fk references user_information(email),
	episode_sequence      NUMBER  NOT NULL constraint pay_history_episode_fk references episode(episode_sequence) on delete cascade ,
	cash_point            NUMBER  NULL ,
	payment_date          DATE  NULL ,
	payment_item          VARCHAR2(50)  NULL ,
	constraint pay_history_pk primary key(email, episode_sequence)
);

drop table pay_history;

--신고 테이블
CREATE TABLE report
(
	report_sequence       NUMBER  NOT NULL constraint report_sequence_pk primary key,
	content               VARCHAR2(200)  NULL ,
	email                 VARCHAR2(30)  NOT NULL constraint report_email_fk references user_information(email),
	webtoon_code         NUMBER  NOT NULL constraint report_webtoon_code_fk references webtoon(webtoon_code) on delete cascade,
	episode_sequence     NUMBER  NOT NULL constraint report_episode_fk references episode(episode_sequence)
);

create sequence report_seq 
	start with 1
	increment by 1 
	nocache;

drop sequence report_seq;

drop table report;

--구독 테이블
CREATE TABLE subscription
(
	subscription_sequence  NUMBER  NOT NULL constraint subscription_sequence_pk primary key, 
	email                  VARCHAR2(30)  NOT NULL constraint subscription_email_fk references user_information(email) ,
	webtoon_code           NUMBER  NOT NULL constraint subscription_webtoon_code_fk references webtoon(webtoon_code) on delete cascade
);

create sequence subscription_seq 
	start with 1
	increment by 1 
	nocache;

drop sequence subscription_seq;

drop table subscription;

--개인 T내역 
CREATE TABLE cash_history
(
	cash_history_sequence  NUMBER  NOT NULL constraint cash_history_pk primary key,
	account_day            DATE  NULL ,
	email                  VARCHAR2(30)  NOT NULL constraint cash_history_email_fk references user_information(email) on delete cascade ,
	cash_point             NUMBER  NULL ,
	content                VARCHAR2(50)  NULL ,
	trade_state            VARCHAR2(10)  NULL 
);

create sequence cash_history_seq 
	start with 1
	increment by 1 
	nocache;

drop sequence cash_history_seq;

drop table cash_history;


--추천 테이블
CREATE TABLE recommend
(
	recommend_sequence	NUMBER  NOT NULL constraint recommend_sequence_pk primary key ,
	episode_sequence	NUMBER  NOT NULL constraint recommend_episode_fk references episode(episode_sequence) on delete cascade,
	email				VARCHAR2(30)  NOT NULL constraint recommend_email_fk references user_information(email) 
)

create sequence recommend_seq 
	start with 1
	increment by 1 
	nocache;

drop sequence recommend_seq;

drop table recommend;

select * from tab;

---------------------------------------------------------------------



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
drop table fund;
drop table category;
drop table episode;
drop table webtoon;
drop table user_information;

select * from tab;
commit;
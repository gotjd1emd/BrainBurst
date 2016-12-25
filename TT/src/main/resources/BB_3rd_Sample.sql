--drop table 
drop table exchange;
drop sequence exchange_seq;

drop table recommend;
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
drop table fund_time_limit;
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
   bank_name             VARCHAR2(30)  NOT NULL ,
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
   webtoon_state         VARCHAR2(10)  default 'serial' ,
   category_code         VARCHAR2(10)  NOT NULL constraint webtoon_category_fk references category(category_code) on delete cascade,
   penalty               VARCHAR2(10)  default 'green',
   nickname              VARCHAR2(30)  NOT NULL constraint webtoon_nickname_fk references user_information(nickname),
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
   episode_number NUMBER  NULL,
   start_date     DATE NOT NULL,
   due_date       DATE NOT NULL 
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
   fund_code             NUMBER  NULL constraint episode_fund_code_fk references fund(fund_code) on delete cascade
);

CREATE TABLE image
(
   image_index           NUMBER  NOT NULL ,
   episode_sequence      NUMBER  NOT NULL constraint image_episode_sequence references episode(episode_sequence) on delete cascade,
   file_name             VARCHAR2(100)  NULL ,
   constraint image_pk primary key(image_index, episode_sequence)
);


CREATE TABLE pay_history
(
   email                 VARCHAR2(30)  NOT NULL constraint pay_history_email_fk references user_information(email),
   fund_code             NUMBER  NOT NULL constraint pay_history_fund_code_fk references fund(fund_code) on delete cascade,
   cash_point            NUMBER  NULL ,
   payment_date          DATE  NULL ,
   payment_item          VARCHAR2(50)  NULL ,
   constraint pay_history_pk primary key(email, fund_code)
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
   episode_sequence     NUMBER  NOT NULL constraint recommend_episode_fk references episode(episode_sequence) on delete cascade,
   email                VARCHAR2(30)  NOT NULL constraint recommend_email_fk references user_information(email) 
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

--exchange table sequence 추가 
   
 create sequence exchange_seq 
   start with 1
   increment by 1 
   nocache;

--Exchange Table 추가 
CREATE TABLE exchange (	
	exchange_sequence  	  NUMBER NOT NULL constraint exchange_sequence_pk primary key,
	email			            VARCHAR2(30) NULL constraint exchange_email_fk references user_information(email),	
	cash_point		        VARCHAR2(20) NOT NULL,
	account_number        VARCHAR2(20) NOT NULL,	
	identification_card   VARCHAR2(100) NULL
);
   
-- sequence drop(delete )

commit;

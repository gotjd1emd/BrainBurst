--DB insert user , category, webtoon , image , 상황에 따라 funding 정보 , suscription (구독 정보 )
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
values ('leonard@naver.com','레너드','leonard','01077559988',7000,'독자','카와이레너드','남','900123');

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
values ('nayeon@naver.com','나연','nayeon','0104343243',1000,'독자','임나연','여','950922');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('dahyeon@gmail.com','다현','dahyeon','01088997788',1000,'독자','김다현','남','980528');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('girlfriend@hanmail.net','유주','girlfriend','01078945642',3000,'독자','최유나','여','971004');

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


----

insert into category (category_code, category_name)
values ('A','action');

insert into category (category_code, category_name)
values ('B','sf');

insert into category (category_code, category_name)
values ('C','fantasy');

insert into category (category_code, category_name)
values ('D','drama');

insert into category (category_code, category_name)
values ('E','thriller');

insert into category (category_code, category_name)
values ('F','life');

insert into category (category_code, category_name)
values ('G','gag');

insert into category (category_code, category_name)
values ('H','adult');

insert into category (category_code, category_name)
values ('I','etc');



----------------------------------------------------------------------------


-- webtoon_category_DB 변경하였습니다.

-- 아이디는 설현과 민아를 사용했습니다. user Informatio_DB

-- insert  카테고리 A action webtoon 제목 : 아파트 -  ********   일반작가    *******
commit;

-- webtoon 타이틀 + 제목 


insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'아파트','free','serial','A','green', '설현', 0, '아파트에서..?!', '/webtoon/webtoonThumbnail/19.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period,summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'어게인','funding','serial','B','green','민아',1,'아파트 괴담','/webtoon/webtoonThumbnail/20.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'26년','funding','complete','C','green', '병재', 1, 'For 26years..?!', '/webtoon/webtoonThumbnail/21.jpg');

--
--------------------------------------------------------------------------------------------------------------------------------------------
----     ******************* Action '아파트' episode 넣기 // 일반 작품   C:\webtoon\action/아파트 폴더안에 이미지 바로 넣기   *****************************
--
--DELETE FROM EPISODE WHERE EPISODE_SEQUENCE = 1
--SELECT * FROM EPISODE;
--select * from episode;

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


--select * from episode;
commit;




---***********펀딩웹툰 어게인  6회 ~ 회차별 펀드 모금 


insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,6,'2011-01-01','2011-01-06');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,7,'2011-01-08','2011-01-13');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,8,'2011-01-15','2011-01-20');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,9,'2011-01-22','2011-01-27');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,10,'2011-01-29','2011-02-03');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,11,'2011-02-05','2011-02-10');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,12,'2011-02-12','2011-02-17');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,13,'2011-02-19','2011-02-24');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,14,'2011-02-26','2011-03-03');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,15,'2011-03-05','2011-03-10');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,16,'2011-03-12','2011-03-17');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,17,'2011-03-19','2011-03-24');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,18,'2011-03-26','2011-03-24');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,19,'2011-03-26','2011-03-31');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,20,'2011-04-02','2011-04-07');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,21,'2011-04-09','2011-04-14');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,22,'2011-04-16','2011-04-21');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,23,'2011-04-23','2011-04-28');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,24,'2011-05-02','2011-05-07');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,25,'2011-05-09','2011-05-14');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,26,'2011-05-16','2011-05-21');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,27,'2011-05-23','2011-05-28');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,28,'2011-05-30','2011-06-04');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,29,'2011-06-06','2011-06-11');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,30,'2011-06-13','2011-06-18');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,31,'2011-06-20','2011-06-25');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,32,'2011-06-27','2011-07-02');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,33,'2011-07-04','2011-07-09');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,34,'2011-07-11','2011-07-16');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,35,'2011-07-18','2011-07-23');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,36,'2011-07-25','2011-07-30');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,37,'2011-08-01','2011-08-06');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,38,'2011-08-08','2011-08-13');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,39,'2011-08-15','2011-08-20');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,40,'2011-08-22','2011-08-27');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,41,'2011-08-29','2011-09-03');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,42,'2011-09-05','2011-09-10');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,43,'2011-09-12','2011-09-17');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,44,'2011-09-19','2011-09-24');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,45,'2011-09-26','2011-10-01');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,46,'2011-10-03','2011-10-08');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,47,'2011-10-10','2011-10-15');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,48,'2011-10-17','2011-10-22');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,49,'2011-10-24','2011-10-29');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,50,'2011-10-31','2011-11-05');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,51,'2011-11-07','2011-11-12');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,52,'2011-11-14','2011-11-19');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,53,'2011-11-21','2011-11-26');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,54,'2011-11-28','2011-12-03');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,55,'2011-12-05','2011-12-10');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,56,'2011-12-12','2011-12-17');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,57,'2011-12-19','2011-12-24');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,58,'2011-12-26','2011-12-31');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,2,59,'2016-12-22','2016-12-27');


--select * from fund;


--------------------------------------** fund webtoon-----------------------------------------------------------------------------------------------------------------
insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 1, 0, 0, '2011-01-01', '예고편', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/1.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 2, 0, 0, '2011-01-08', '제1화 - 1부 어게인 1화_01', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/2.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 3, 0, 0, '2011-01-15', '제1화 - 1부 어게인 1화_02', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/3.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 4, 0, 0, '2011-01-22', '제1화 - 1부 어게인 1화_03', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/4.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 5, 0, 0, '2011-01-29', '제1화 - 1부 어게인 1화_04', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/5.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 6, 0, 0, '2011-02-05', '제1화 - 1부 어게인 1화_05', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/6.jpg', 1);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 7, 0, 0, '2011-02-12', '제1화 - 1부 어게인 1화_06', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/7.jpg', 2);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 8, 0, 0, '2011-02-19', '제1화 - 1부 어게인 1화_07', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/8.jpg', 3);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 9, 0, 0, '2011-02-26', '제1화 - 1부 어게인 1화_08', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/9.jpg', 4);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 10, 0, 0, '2011-03-04', '제1화 - 1부 어게인 1화_09', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/10.jpg', 5);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 11, 0, 0, '2011-03-11', '제1화 - 1부 어게인 1화_10', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/11.jpg', 6);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 12, 0, 0, '2011-03-18', '제2화 - 1부 어게인 2화_01', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/12.jpg', 7);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 13, 0, 0, '2011-03-25', '제2화 - 1부 어게인 2화_02', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/13.jpg', 8);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 14, 0, 0, '2011-04-01', '제2화 - 1부 어게인 2화_03', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/14.jpg', 9);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 15, 0, 0, '2011-04-08', '제2화 - 1부 어게인 2화_04', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/15.jpg', 10);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 16, 0, 0, '2011-04-15', '제2화 - 1부 어게인 2화_06', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/16.jpg', 11);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 17, 0, 0, '2011-04-22', '제2화 - 1부 어게인 2화_07', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/17.jpg', 12);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 18, 0, 0, '2011-04-29', '제2화 - 1부 어게인 2화_08', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/18.jpg', 13);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 19, 0, 0, '2011-05-06', '제2화 - 1부 어게인 2화_09', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/19.jpg', 14);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 20, 0, 0, '2011-05-13', '제2화 - 1부 어게인 2화_10', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/20.jpg', 15);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 21, 0, 0, '2011-05-20', '제2화 - 1부 어게인 2화_11', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/21.jpg', 16);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 22, 0, 0, '2011-05-27', '제2화 - 1부 어게인 2화_12', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/22.jpg', 17);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 23, 0, 0, '2011-06-03', '제2화 - 1부 어게인 2화_13', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/23.jpg', 18);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 24, 0, 0, '2011-06-10', '제2화 - 1부 어게인 2화_14', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/24.jpg', 19);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 25, 0, 0, '2011-06-17', '제2화 - 1부 어게인 2화_15', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/25.jpg', 20);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 26, 0, 0, '2011-06-23', '제2화 - 1부 어게인 2화_16', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/26.jpg', 21);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 27, 0, 0, '2011-06-30', '제2화 - 1부 어게인 2화_17', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/27.jpg', 22);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 28, 0, 0, '2011-07-07', '제2화 - 1부 어게인 2화_18', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/28.jpg', 23);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 29, 0, 0, '2011-07-09', '제3화 - 1부 어게인 3화_01', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/29.jpg', 24);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 30, 0, 0, '2011-07-16', '제3화 - 1부 어게인 3화_02', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/30.jpg', 25);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 31, 0, 0, '2011-07-23', '제3화 - 1부 어게인 3화_03', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/31.jpg', 26);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 32, 0, 0, '2011-07-30', '제3화 - 1부 어게인 3화_04', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/32.jpg', 27);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 33, 0, 0, '2011-08-05', '제3화 - 1부 어게인 3화_05', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/33.jpg', 28);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 34, 0, 0, '2011-08-12', '제3화 - 1부 어게인 3화_06', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/34.jpg', 29);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 35, 0, 0, '2011-08-19', '제3화 - 1부 어게인 3화_07', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/35.jpg', 30);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 36, 0, 0, '2011-08-26', '제3화 - 1부 어게인 3화_08', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/36.jpg', 31);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 37, 0, 0, '2011-09-02', '제3화 - 1부 어게인 3화_09', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/37.jpg', 32);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 38, 0, 0, '2011-09-09', '제3화 - 1부 어게인 3화_10', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/38.jpg', 33);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 39, 0, 0, '2011-09-16', '제4화 - 1부 어게인 4화_01', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/39.jpg', 34);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 40, 0, 0, '2011-09-22', '제4화 - 1부 어게인 4화_02', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/40.jpg', 35);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 41, 0, 0, '2011-09-29', '제4화 - 1부 어게인 4화_03', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/41.jpg', 36);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 42, 0, 0, '2011-10-06', '제4화 - 1부 어게인 4화_04', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/42.jpg', 37);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 43, 0, 0, '2011-10-13', '제4화 - 1부 어게인 4화_05', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/43.jpg', 38);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 44, 0, 0, '2011-10-20', '제4화 - 1부 어게인 4화_06', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/44.jpg', 39);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 45, 0, 0, '2011-10-27', '제4화 - 1부 어게인 4화_07', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/45.jpg', 40);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 46, 0, 0, '2011-11-03', '제4화 - 1부 어게인 4화_08', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/46.jpg', 41);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 47, 0, 0, '2011-11-10', '제4화 - 1부 어게인 4화_09', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/47.jpg', 42);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 48, 0, 0, '2011-11-17', '제4화 - 1부 어게인 4화_10', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/48.jpg', 43);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 49, 0, 0, '2011-11-24', '제5화 - 1부 어게인 5화_1', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/49.jpg', 44);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 50, 0, 0, '2011-12-02', '제5화 - 1부 어게인 5화_2', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/50.jpg', 45);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 51, 0, 0, '2011-12-09', '제5화 - 1부 어게인 5화_3', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/51.jpg', 46);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 52, 0, 0, '2011-12-16', '제5화 - 1부 어게인 5화_4', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/52.jpg', 47);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 53, 0, 0, '2011-12-23', '제5화 - 1부 어게인 5화_5', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/53.jpg', 48);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 54, 0, 0, '2011-12-30', '제5화 - 1부 어게인 5화_6', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/54.jpg', 49);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 55, 0, 0, '2012-01-06 ', '제5화 - 1부 어게인 5화_7', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/55.jpg', 50);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 56, 0, 0, '2012-01-13', '제5화 - 1부 어게인 5화_8', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/56.jpg', 51);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 57, 0, 0, '2012-01-20', '제5화 - 1부 어게인 5화_9', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/57.jpg', 52);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 58, 0, 0, '2012-01-27', '제5화 - 1부 어게인 5화_10', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/58.jpg', 53);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 59, 0, 0, '2016-12-22', '제5화 - 1부 어게인 5화_11', '작가의말 엘레베이터에서?', '/webtoon/episodeThumbnail/59.jpg', 54);

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
--(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, episodeWebtoonl)
--values (3,'26년','funding','complete','C','green', '병재', 7, 'For 26years..?!', /webtoon/webtoonThumbnail/21.jpg);


---------웹툰 26년의 펀딩 ------------------------------

--select * from fund order by fund_code;


insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,6,'2009-01-01','2009-01-06');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,7,'2009-01-08','2009-01-13');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,8,'2009-01-15','2009-01-20');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,9,'2009-01-22','2009-01-27');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,10,'2009-01-29','2009-02-03');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,11,'2009-02-05','2009-02-10');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,12,'2009-02-12','2009-02-17');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,13,'2009-02-19','2009-02-24');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,14,'2009-02-26','2009-03-03');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,15,'2009-03-05','2009-03-10');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,16,'2009-03-12','2009-03-17');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,17,'2009-03-19','2009-03-24');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,18,'2009-03-26','2009-03-31');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,19,'2009-04-02','2009-04-07');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,20,'2009-04-09','2009-04-14');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,21,'2009-04-16','2009-04-21');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,22,'2009-04-23','2009-04-28');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,23,'2009-04-30','2009-05-05');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,24,'2009-05-07','2009-05-12');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,25,'2009-05-14','2009-05-19');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,26,'2009-05-21','2009-05-26');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,27,'2009-05-28','2009-06-02');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,28,'2009-06-04','2009-06-09');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,29,'2009-06-11','2009-06-16');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,30,'2009-06-18','2009-06-23');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,31,'2009-06-25','2009-06-30');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,32,'2009-07-02','2009-07-07');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,33,'2009-07-09','2009-07-14');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,34,'2009-07-16','2009-07-21');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,35,'2009-07-23','2009-07-28');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,36,'2009-07-30','2009-08-04');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,37,'2009-08-06','2009-08-11');-------------------    


insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,38,'2009-08-13','2009-08-18');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,39,'2009-08-20','2009-08-25');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,40,'2009-08-27','2009-09-01');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,41,'2009-09-03','2009-09-08');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,42,'2009-09-10','2009-09-15');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,43,'2009-09-17','2009-09-22');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,44,'2009-09-24','2009-09-29');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,45,'2009-10-01','2009-10-06');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,46,'2009-10-08','2009-10-13');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,47,'2009-10-15','2009-10-20');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,48,'2009-10-22','2009-10-27');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,49,'2009-10-29','2009-11-03');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,50,'2009-11-05','2009-11-10');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,51,'2009-11-12','2009-11-17');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,52,'2009-11-19','2009-11-24');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,53,'2009-11-26','2009-12-01');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,54,'2009-12-03','2009-12-08');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,55,'2009-12-10','2009-12-15');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,56,'2009-12-17','2009-12-22');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,57,'2009-12-24','2009-12-29');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,58,'2009-12-31','2010-01-05');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,59,'2010-01-07','2010-01-12');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,60,'2010-01-14','2010-01-19');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,61,'2010-01-21','2010-01-26');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,62,'2010-01-28','2010-02-02');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,63,'2010-02-04','2010-02-09');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,64,'2010-02-11','2010-02-16');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,65,'2010-02-18','2010-02-23');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,66,'2010-02-25','2010-03-02');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,67,'2010-03-04','2010-03-09');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,68,'2010-03-11','2010-03-16');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,69,'2010-03-18','2010-03-23');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,70,'2010-03-25','2010-03-30');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,71,'2010-04-01','2010-04-06');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,72,'2010-04-08','2010-04-13');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,73,'2010-04-15','2010-04-20');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,74,'2010-04-22','2010-04-27');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,75,'2010-04-29','2010-05-04');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,76,'2010-05-06','2010-05-11');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,77,'2010-05-13','2010-05-18');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,78,'2010-05-20','2010-05-25');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,79,'2010-05-27','2010-06-01');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,80,'2010-06-03','2010-06-08');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,81,'2010-06-10','2010-06-15');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,82,'2010-06-17','2010-06-22');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,83,'2010-06-24','2010-06-29');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,84,'2010-07-01','2010-07-06');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,85,'2010-07-08','2010-07-13');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,86,'2010-07-15','2010-07-20');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,87,'2010-07-22','2010-07-27');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,88,'2010-07-29','2010-08-03');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,89,'2010-08-05','2010-08-10');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,90,'2010-08-12','2010-08-17');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,91,'2010-08-19','2010-08-24');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,92,'2010-08-26','2010-08-31');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,93,'2010-09-02','2010-09-07');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,94,'2010-09-09','2010-09-14');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,95,'2010-09-16','2010-09-21');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,96,'2010-09-23','2010-09-28');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,97,'2010-09-30','2010-10-05');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,98,'2010-10-07','2010-10-12');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,99,'2010-10-14','2010-10-19');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,100,'2010-10-21','2010-10-26');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,101,'2010-10-28','2010-11-02');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,102,'2010-11-04','2010-11-09');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,103,'2010-11-11','2010-11-16');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,104,'2010-11-18','2010-11-23');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,105,'2010-11-25','2010-11-30');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,106,'2010-12-02','2010-12-07');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,107,'2010-12-09','2010-12-14');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,108,'2010-12-16','2010-12-21');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,109,'2010-12-23','2010-12-28');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,110,'2010-12-30','2011-01-04');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,111,'2011-01-06','2011-01-11');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,112,'2010-01-13','2011-01-18');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,113,'2010-01-20','2011-01-25');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,114,'2011-01-27','2011-02-01');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,115,'2011-02-03','2011-02-08');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,116,'2011-02-10','2011-02-15');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,117,'2011-02-17','2011-02-22');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,118,'2011-02-24','2011-03-01');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,119,'2011-03-03','2011-03-08');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,120,'2011-03-10','2011-03-15');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,121,'2011-03-17','2011-03-22');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,122,'2011-03-24','2011-03-29');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,123,'2011-03-31','2011-04-05');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,124,'2011-04-07','2011-04-12');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,125,'2011-04-14','2011-04-19');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,126,'2011-04-21','2011-04-26');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,127,'2011-04-28','2011-05-03');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,128,'2011-05-05','2011-05-10');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,3,129, '2016-12-21','2012-12-26');

--select * from fund;
--------------------------------------------------------------------------------------------
--select * from episode;

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 1, 0, 0, '2009-01-01', '예고편', '인트로', '/webtoon/episodeThumbnail/10.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 2, 0, 0, '2009-01-08', '26년을 이야기한다-1', '26년이야', '/webtoon/episodeThumbnail/11.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 3, 0, 0, '2009-01-15', '26년을 이야기한다-2', '26년이야', '/webtoon/episodeThumbnail/12.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 4, 0, 0, '2009-01-22', '26년을 이야기한다-3', '26년이야', '/webtoon/episodeThumbnail/13.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 5, 0, 0, '2009-01-29', '제1화 그 죽음을 기억하라-1', '26년이야', '/webtoon/episodeThumbnail/14.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 6, 0, 0, '2009-02-05', '제1화 그 죽음을 기억하라-2', '26년이야', '/webtoon/episodeThumbnail/15.jpg', 55);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 7, 0, 0, '2009-02-12', '제2화 단절되지 않는 아픔-1', '26년이야', '/webtoon/episodeThumbnail/16.jpg', 56);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 8, 0, 0, '2009-02-19', '제2화 단절되지 않는 아픔-2', '26년이야', '/webtoon/episodeThumbnail/17.jpg', 57);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 9, 0, 0, '2009-02-26', '제2화 단절되지 않는 아픔-3', '26년이야', '/webtoon/episodeThumbnail/18.jpg', 58);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 10, 0, 0, '2009-03-05', '제2화 단절되지 않는 아픔-4', '작가의말 26년이야', '/webtoon/episodeThumbnail/19.jpg', 59);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 11, 0, 0, '2009-03-12', '제3화 상처는 깊은 흉터를 남긴다-1', '26년이야', '/webtoon/episodeThumbnail/10.jpg', 60);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 12, 0, 0, '2009-03-19', '제3화 상처는 깊은 흉터를 남긴다-2', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 61);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 13, 0, 0, '2009-03-26', '제3화 상처는 깊은 흉터를 남긴다-3', '26년이야', '/webtoon/episodeThumbnail/2.jpg', 62);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 14, 0, 0, '2009-04-02', '제3화 상처는 깊은 흉터를 남긴다-4', '26년이야', '/webtoon/episodeThumbnail/3.jpg', 63);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 15, 0, 0, '2009-04-09', '제4화 일어서는 사람들-1', '26년이야', '/webtoon/episodeThumbnail/4.jpg', 64);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 16, 0, 0, '2009-04-16', '제4화 일어서는 사람들-2', '26년이야', '/webtoon/episodeThumbnail/5.jpg', 65);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 17, 0, 0, '2009-04-23', '제4화 일어서는 사람들-3', '26년이야', '/webtoon/episodeThumbnail/6.jpg', 66);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 18, 0, 0, '2009-04-30', '제4화 일어서는 사람들-4', '26년이야', '/webtoon/episodeThumbnail/7.jpg', 67);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 19, 0, 0, '2009-05-07', '제5화 길 위에 서다-1', '26년이야', '/webtoon/episodeThumbnail/8.jpg', 68);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 20, 0, 0, '2009-05-14', '제5화 길 위에 서다-2', '26년이야', '/webtoon/episodeThumbnail/9.jpg', 69);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 21, 0, 0, '2009-05-21', '제5화 길 위에 서다-3', '26년이야', '/webtoon/episodeThumbnail/10.jpg', 70);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 22, 0, 0, '2009-05-28', '제6화 죽은 사람이 산 사람에게-1', '26년이야', '/webtoon/episodeThumbnail/11.jpg', 71);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 23, 0, 0, '2009-06-04', '제6화 죽은 사람이 산 사람에게-2', '26년이야', '/webtoon/episodeThumbnail/12.jpg', 72);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 24, 0, 0, '2009-06-11', '제6화 죽은 사람이 산 사람에게-3', '26년이야?', '/webtoon/episodeThumbnail/13.jpg', 73);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 25, 0, 0, '2009-06-18', '제6화 죽은 사람이 산 사람에게-4', '26년이야', '/webtoon/episodeThumbnail/14.jpg', 74);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 26, 0, 0, '2009-06-25', '제7화 시대에 휩쓸린 사람들-1', '26년이야', '/webtoon/episodeThumbnail/15.jpg', 75);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 27, 0, 0, '2009-07-02', '제7화 시대에 휩쓸린 사람들-2', '26년이야', '/webtoon/episodeThumbnail/16.jpg', 76);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 28, 0, 0, '2009-07-09', '제7화 시대에 휩쓸린 사람들-3', '26년이야', '/webtoon/episodeThumbnail/17.jpg', 77);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 29, 0, 0, '2009-07-16', '제7화 시대에 휩쓸린 사람들-4', '26년이야', '/webtoon/episodeThumbnail/18.jpg', 78);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 30, 0, 0, '2009-07-23', '제7화 시대에 휩쓸린 사람들-5', '26년이야', '/webtoon/episodeThumbnail/19.jpg', 79);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 31, 0, 0, '2009-07-30', '제7화 시대에 휩쓸린 사람들-6', '26년이야', '/webtoon/episodeThumbnail/20.jpg', 80);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 32, 0, 0, '2009-08-06', '제9화 사람과 사람과 사람들-1', '26년이야', '/webtoon/episodeThumbnail/21.jpg', 81);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 33, 0, 0, '2009-08-13', '제9화 사람과 사람과 사람들-2', '26년이야', '/webtoon/episodeThumbnail/22.jpg', 82);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 34, 0, 0, '2009-08-20', '제9화 사람과 사람과 사람들-3', '26년이야', '/webtoon/episodeThumbnail/23.jpg', 83);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 35, 0, 0, '2009-08-27', '제10화 가슴에 돋는 칼로 슬픔을-1', '26년이야', '/webtoon/episodeThumbnail/24.jpg', 84);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 36, 0, 0, '2009-09-03', '제10화 가슴에 돋는 칼로 슬픔을-2', '26년이야', '/webtoon/episodeThumbnail/25.jpg', 85);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 37, 0, 0, '2009-09-10', '제10화가슴에 돋는 칼로 슬픔을-3', '26년이야', '/webtoon/episodeThumbnail/26.jpg', 86);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 38, 0, 0, '2009-09-17', '제10화 가슴에 돋는 칼로 슬픔을-4', '26년이야', '/webtoon/episodeThumbnail/27.jpg', 87);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 39, 0, 0, '2009-09-23', '제11화 도발-1', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 88);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 40, 0, 0, '2009-09-30', '제11화 도발-2', '26년이야', '/webtoon/episodeThumbnail/2.jpg', 89);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 41, 0, 0, '2009-10-07', '제11화 도발-3', '26년이야', '/webtoon/episodeThumbnail/3.jpg', 90);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 42, 0, 0, '2009-10-15', '제11화 도발-4', '26년이야', '/webtoon/episodeThumbnail/4.jpg', 91);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 43, 0, 0, '2009-10-22', '제11화 도발-5', '26년이야', '/webtoon/episodeThumbnail/5.jpg', 92);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 44, 0, 0, '2009-10-29', '제12화 좁혀드는 시선-1', '26년이야', '/webtoon/episodeThumbnail/6.jpg', 93);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 45, 0, 0, '2009-11-05', '제12화 좁혀드는 시선-2', '26년이야', '/webtoon/episodeThumbnail/7.jpg', 94);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 46, 0, 0, '2009-11-12', '제12화 좁혀드는 시선-3', '26년이야', '/webtoon/episodeThumbnail/8.jpg', 95);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 47, 0, 0, '2009-11-19', '제12화 좁혀드는 시선-4', '26년이야', '/webtoon/episodeThumbnail/9.jpg', 96);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 48, 0, 0, '2009-11-26', '제13화 작용과 반작용-1', '26년이야', '/webtoon/episodeThumbnail/10.jpg', 97);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 49, 0, 0, '2009-12-03', '제13화 작용과 반작용-2', '26년이야', '/webtoon/episodeThumbnail/11.jpg', 98);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 50, 0, 0, '2009-12-10', '제13화 작용과 반작용-3', '26년이야', '/webtoon/episodeThumbnail/12.jpg', 99);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 51, 0, 0, '2009-12-17', '제14화 햇빛 쏟아지는 거리-1', '26년이야', '/webtoon/episodeThumbnail/13.jpg', 100);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 52, 0, 0, '2009-12-23', '제14화 햇빛 쏟아지는 거리-2', '26년이야', '/webtoon/episodeThumbnail/14.jpg', 101);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 53, 0, 0, '2009-12-30', '제14화 햇빛 쏟아지는 거리-3', '26년이야', '/webtoon/episodeThumbnail/15.jpg', 102);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 54, 0, 0, '2010-01-06', '제14화 햇빛 쏟아지는 거리-4', '26년이야', '/webtoon/episodeThumbnail/16.jpg', 103);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 55, 0, 0, '2010-01-13', '제15화 되돌아오는 진실-1', '26년이야', '/webtoon/episodeThumbnail/17.jpg', 104);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 56, 0, 0, '2010-01-20', '제15화 되돌아오는 진실-2', '26년이야', '/webtoon/episodeThumbnail/18.jpg', 105);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 57, 0, 0, '2010-01-27', '제15화 되돌아오는 진실-3', '26년이야', '/webtoon/episodeThumbnail/19.jpg', 106);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 58, 0, 0, '2010-02-03', '제15화 되돌아오는 진실-4', '26년이야', '/webtoon/episodeThumbnail/20.jpg', 107);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 59, 0, 0, '2010-02-10', '제16화 또 다른 계획-1', '26년이야', '/webtoon/episodeThumbnail/21.jpg', 108);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 60, 0, 0, '2010-02-17', '제16화 또 다른 계획-2', '26년이야', '/webtoon/episodeThumbnail/22.jpg', 109);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 61, 0, 0, '2010-02-24', '제16화 또 다른 계획-3', '26년이야', '/webtoon/episodeThumbnail/23.jpg', 110);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 62, 0, 0, '2010-03-03', '제16화 또 다른 계획-4', '26년이야', '/webtoon/episodeThumbnail/24.jpg', 111);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 63, 0, 0, '2010-03-10', '제16화 또 다른 계획-5', '26년이야', '/webtoon/episodeThumbnail/25.jpg', 112);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 64, 0, 0, '2010-03-17', '제17화 가능과 불가능-1', '26년이야', '/webtoon/episodeThumbnail/26.jpg', 113);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 65, 0, 0, '2010-03-24', '제17화 가능과 불가능-2', '26년이야', '/webtoon/episodeThumbnail/27.jpg', 114);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 66, 0, 0, '2010-03-31', '제17화 가능과 불가능-3', '26년이야', '/webtoon/episodeThumbnail/28.jpg', 115);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 67, 0, 0, '2010-04-07', '제18화 빨간 신호등-1', '26년이야', '/webtoon/episodeThumbnail/29.jpg', 116);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 68, 0, 0, '2010-04-14', '제18화 빨간 신호등-2', '26년이야', '/webtoon/episodeThumbnail/30.jpg', 117);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 69, 0, 0, '2010-04-21', '제18화 빨간 신호등-3', '26년이야', '/webtoon/episodeThumbnail/31.jpg', 118);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 70, 0, 0, '2010-04-28', '제18화 빨간 신호등-4', '26년이야', '/webtoon/episodeThumbnail/32.jpg', 119);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 71, 0, 0, '2010-05-05', '제18화 빨간 신호등-5', '26년이야', '/webtoon/episodeThumbnail/33.jpg', 120);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 72, 0, 0, '2010-05-12', '제19화 시대는 아직도 아프다-1', '26년이야', '/webtoon/episodeThumbnail/34.jpg', 121);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 73, 0, 0, '2010-05-19', '제19화 시대는 아직도 아프다-2', '26년이야', '/webtoon/episodeThumbnail/35.jpg', 122);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 74, 0, 0, '2010-05-26', '제19화 시대는 아직도 아프다-3', '26년이야', '/webtoon/episodeThumbnail/36.jpg', 123);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 75, 0, 0, '2010-06-03', '제19화 시대는 아직도 아프다-4', '26년이야', '/webtoon/episodeThumbnail/37.jpg', 124);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 76, 0, 0, '2010-06-10', '제19화 시대는 아직도 아프다-5', '26년이야', '/webtoon/episodeThumbnail/38.jpg', 125);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 77, 0, 0, '2010-06-17', '제20화 그렇지만 다시 일어나-1', '26년이야', '/webtoon/episodeThumbnail/39.jpg', 126);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 78, 0, 0, '2010-06-24', '제20화 그렇지만 다시 일어나-2', '26년이야', '/webtoon/episodeThumbnail/40.jpg', 127);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 79, 0, 0, '2010-07-31', '제20화 그렇지만 다시 일어나-3', '26년이야', '/webtoon/episodeThumbnail/41.jpg', 128);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 80, 0, 0, '2010-08-07', '제20화 그렇지만 다시 일어나-4', '26년이야', '/webtoon/episodeThumbnail/42.jpg', 129);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 81, 0, 0, '2010-08-15', '제20화 그렇지만 다시 일어나-5', '26년이야', '/webtoon/episodeThumbnail/43.jpg', 130);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 82, 0, 0, '2010-08-22', '제21화 등 뒤의 시선-1', '26년이야', '/webtoon/episodeThumbnail/44.jpg', 131);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 83, 0, 0, '2010-08-29', '제21화 등 뒤의 시선-2', '26년이야', '/webtoon/episodeThumbnail/45.jpg', 132);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 84, 0, 0, '2010-09-05', '제21화 등 뒤의 시선-3', '26년이야', '/webtoon/episodeThumbnail/46.jpg', 133);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 85, 0, 0, '2010-09-12', '제21화 등 뒤의 시선-4', '26년이야', '/webtoon/episodeThumbnail/47.jpg', 134);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 86, 0, 0, '2010-09-19', '제22화 늦게 오는 봄-1', '26년이야', '/webtoon/episodeThumbnail/48.jpg', 135);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 87, 0, 0, '2010-09-26', '제22화 늦게 오는 봄-2', '26년이야', '/webtoon/episodeThumbnail/49.jpg', 136);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 88, 0, 0, '2010-10-03', '제22화 늦게 오는 봄-3', '26년이야', '/webtoon/episodeThumbnail/50.jpg', 137);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 89, 0, 0, '2010-10-10', '제22화 늦게 오는 봄-4', '26년이야', '/webtoon/episodeThumbnail/51.jpg', 138);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 90, 0, 0, '2010-10-17', '제22화 늦게 오는 봄-5', '26년이야', '/webtoon/episodeThumbnail/52.jpg', 139);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 91, 0, 0, '2010-10-24', '제23화 어제 죽은 내일-1', '26년이야', '/webtoon/episodeThumbnail/53.jpg', 140);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 92, 0, 0, '2010-10-31', '제23화 어제 죽은 내일-2', '26년이야', '/webtoon/episodeThumbnail/54.jpg', 141);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 93, 0, 0, '2010-11-07', '제23화 어제 죽은 내일-3', '26년이야', '/webtoon/episodeThumbnail/55.jpg', 142);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 94, 0, 0, '2010-11-14', '제24화 오늘을 사는 사람들-1', '26년이야', '/webtoon/episodeThumbnail/56.jpg', 143);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 95, 0, 0, '2010-11-21', '제24화 오늘을 사는 사람들-2', '26년이야', '/webtoon/episodeThumbnail/57.jpg', 144);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 96, 0, 0, '2010-11-28', '제25화 그대 그날을 기억하는가-1', '26년이야', '/webtoon/episodeThumbnail/58.jpg', 145);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 97, 0, 0, '2010-12-05', '제25화 그대 그날을 기억하는가-2', '26년이야', '/webtoon/episodeThumbnail/59.jpg', 146);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 98, 0, 0, '2010-12-12', '제25화 그대 그날을 기억하는가-3', '26년이야', '/webtoon/episodeThumbnail/60.jpg', 147);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 99, 0, 0, '2010-12-19', '제25화 그대 그날을 기억하는가-4', '26년이야', '/webtoon/episodeThumbnail/1.jpg', 148);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 100, 0, 0, '2010-12-26', '제25화 그대 그날을 기억하는가-5', '26년이야', '/webtoon/episodeThumbnail/2.jpg', 149);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 101, 0, 0, '2011-01-02', '제25화 그대 그날을 기억하는가-6', '26년이야', '/webtoon/episodeThumbnail/3.jpg', 150);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 102, 0, 0, '2011-01-09', '제25화 그대 그날을 기억하는가-7', '26년이야', '/webtoon/episodeThumbnail/4.jpg', 151);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 103, 0, 0, '2011-01-16', '제26화 서럽다 뉘 말하는가-1', '26년이야', '/webtoon/episodeThumbnail/5.jpg', 152);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 104, 0, 0, '2011-01-23', '제26화 서럽다 뉘 말하는가-2', '26년이야', '/webtoon/episodeThumbnail/6.jpg', 153);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 105, 0, 0, '2011-01-30', '제26화 서럽다 뉘 말하는가-3', '26년이야', '/webtoon/episodeThumbnail/7.jpg', 154);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	 
values (episode_seq.NEXTVAL, 3, 106, 0, 0, '2011-02-06', '제26화 서럽다 뉘 말하는가-4', '26년이야', '/webtoon/episodeThumbnail/8.jpg', 155);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 107, 0, 0, '2011-02-13', '제26화 서럽다 뉘 말하는가-5', '26년이야', '/webtoon/episodeThumbnail/9.jpg', 156);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 108, 0, 0, '2011-02-20', '제26화 서럽다 뉘 말하는가-6', '26년이야', '/webtoon/episodeThumbnail/10.jpg', 157);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 109, 0, 0, '2011-02-27', '제26화 서럽다 뉘 말하는가-7', '26년이야', '/webtoon/episodeThumbnail/11.jpg', 158);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 110, 0, 0, '2011-03-06', '제27화 돌아오지 않는 봄-1', '26년이야', '/webtoon/episodeThumbnail/12.jpg', 159);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 111, 0, 0, '2011-03-13', '제27화 돌아오지 않는 봄-2', '26년이야', '/webtoon/episodeThumbnail/13.jpg', 160);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 112, 0, 0, '2011-03-20', '제27화 돌아오지 않는 봄-3', '26년이야', '/webtoon/episodeThumbnail/14.jpg', 161);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 113, 0, 0, '2011-03-27', '제27화 돌아오지 않는 봄-4', '26년이야', '/webtoon/episodeThumbnail/15.jpg', 162);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 114, 0, 0, '2011-04-03', '제27화 돌아오지 않는 봄-5', '26년이야', '/webtoon/episodeThumbnail/16.jpg', 163);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 115, 0, 0, '2011-04-10', '제27화 돌아오지 않는 봄-6', '26년이야', '/webtoon/episodeThumbnail/17.jpg', 164);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 116, 0, 0, '2011-04-17', '제27화 돌아오지 않는 봄-7', '26년이야', '/webtoon/episodeThumbnail/18.jpg', 165);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 117, 0, 0, '2011-04-24', '제28화 마른 잎 다시 살아나-1', '26년이야', '/webtoon/episodeThumbnail/19.jpg', 166);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 118, 0, 0, '2011-05-01', '제28화 마른 잎 다시 살아나-2', '26년이야', '/webtoon/episodeThumbnail/20.jpg', 167);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 119, 0, 0, '2011-05-08', '제28화 마른 잎 다시 살아나-3', '26년이야', '/webtoon/episodeThumbnail/21.jpg', 168);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 120, 0, 0, '2011-05-15', '제28화 마른 잎 다시 살아나-4', '26년이야', '/webtoon/episodeThumbnail/22.jpg', 169);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 121, 0, 0, '2011-05-22', '제28화 마른 잎 다시 살아나-5', '26년이야', '/webtoon/episodeThumbnail/23.jpg', 170);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 122, 0, 0, '2011-05-29', '제28화 마른 잎 다시 살아나-6', '26년이야', '/webtoon/episodeThumbnail/24.jpg', 171);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 123, 0, 0, '2011-06-05', '제28화 마른 잎 다시 살아나-7', '26년이야', '/webtoon/episodeThumbnail/25.jpg', 172);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 124, 0, 0, '2011-06-12', '제28화 마른 잎 다시 살아나-8', '26년이야', '/webtoon/episodeThumbnail/26.jpg', 173);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 125, 0, 0, '2011-06-19', '제28화 마른 잎 다시 살아나-9', '26년이야', '/webtoon/episodeThumbnail/27.jpg', 174);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 126, 0, 0, '2011-06-26', '제28화 마른 잎 다시 살아나-10', '26년이야', '/webtoon/episodeThumbnail/28.jpg', 175);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 127, 0, 0, '2011-07-03', '제28화 마른 잎 다시 살아나-11', '26년이야', '/webtoon/episodeThumbnail/29.jpg', 176);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 128, 0, 0, '2011-07-10', '제28화 마른 잎 다시 살아나-12', '26년이야', '/webtoon/episodeThumbnail/30.jpg', 177);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 129, 0, 0, '2016-12-21', '제28화 마른 잎 다시 살아나-13', '26년이야', '/webtoon/episodeThumbnail/31.jpg', 178);


--------table image 
  --- 26년 회차 이미지 
---C:/webtoon/fantasy/

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



-- drama category  펀딩작가 고은  제목 : 바보 
  --1. webtoon 정보
insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'바보','funding','complete','D','green', '고은', 1, '바보-?!', '/webtoon/webtoonThumbnail/1.jpg');


---------------------------------확인 21일 3시 19분 ------------------------------------------------------
 -- drama funding 회차 
 --select  * from fund;------끝나는 날짜 넣기

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,4,6,'2014-02-05','2014-02-10');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,4,7,'2014-02-12','2014-02-17');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,4,8,'2014-02-19','2014-02-24');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,4,9,'2014-02-26','2014-03-03');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,4,10,'2014-03-05','2014-03-10');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,4,11,'2014-03-12','2014-03-17');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,4,12,'2014-03-19','2014-03-24');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,4,13,'2014-03-26','2014-03-31');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,4,14,'2014-04-02','2014-04-07');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,4,15,'2014-04-09','2014-04-14');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,4,16,'2014-04-16','2014-04-21');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,4,17,'2014-04-23','2014-04-28');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,4,18,'2014-04-30','2014-05-05');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,4,19,'2016-12-20','2016-12-25');



--select * from fund;
---episode 정보

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 1, 0, 0, '2014-01-01', '제1화 - 동네', '작가의말 바브바브', '/webtoon/episodeThumbnail/30.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 2, 0, 0, '2014-01-08', '제2화 - 귀가', '작가의말 바브바브', '/webtoon/episodeThumbnail/31.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 3, 0, 0, '2014-01-15', '제3화 - 별', '작가의말 바브바브', '/webtoon/episodeThumbnail/32.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 4, 0, 0, '2014-01-22', '제4화 - 카페', '작가의말 바브바브', '/webtoon/episodeThumbnail/33.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 5, 0, 0, '2014-01-29', '제5화 - 신발', '작가의말 바브바브', '/webtoon/episodeThumbnail/34.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 6, 0, 0, '2014-02-05', '제6화 - 친구', '작가의말 바브바브', '/webtoon/episodeThumbnail/35.jpg', 179);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 7, 0, 0, '2014-02-12', '제7화 - 토스트', '작가의말 바브바브', '/webtoon/episodeThumbnail/36.jpg', 180);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 8, 0, 0, '2014-02-19', '제8화 - 커피', '작가의말 바브바브', '/webtoon/episodeThumbnail/37.jpg', 181);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 9, 0, 0, '2014-02-26', '제9화 - 사진', '작가의말 바브바브', '/webtoon/episodeThumbnail/38.jpg', 182);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 10, 0, 0, '2014-03-05', '제10화 - 시선', '작가의말 바브바브', '/webtoon/episodeThumbnail/30.jpg', 183);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 11, 0, 0, '2014-03-12', '제11화 - 웃음_1', '작가의말 바브바브', '/webtoon/episodeThumbnail/31.jpg', 184);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 12, 0, 0, '2014-03-19', '제11화 - 웃음_2', '작가의말 바브바브', '/webtoon/episodeThumbnail/32.jpg', 185);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 13, 0, 0, '2014-03-26', '제12화 - 자리', '작가의말 바브바브', '/webtoon/episodeThumbnail/33.jpg', 186);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 14, 0, 0, '2014-04-02', '제13화 - 그림자_1', '작가의말 바브바브', '/webtoon/episodeThumbnail/34.jpg', 187);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 15, 0, 0, '2014-04-09', '제13화 - 그림자_2', '작가의말 바브바브', '/webtoon/episodeThumbnail/35.jpg', 188);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 16, 0, 0, '2014-04-16', '제14화 - 상수', '작가의말 바브바브', '/webtoon/episodeThumbnail/36.jpg', 189);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 17, 0, 0, '2014-04-23', '제15화 - 희영', '작가의말 바브바브', '/webtoon/episodeThumbnail/37.jpg', 190);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 18, 0, 0, '2014-04-30', '제16화  - 첫눈', '작가의말 바브바브', '/webtoon/episodeThumbnail/38.jpg', 191);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 19, 0, 0, '2016-12-20', '제17화 - 거리', '작가의말 바브바브', '/webtoon/episodeThumbnail/39.jpg', 192);


--회차별 image  넣기 
--select* from image;

insert into image(image_index, episode_sequence, file_name) 
values(1, 235, '/webtoon/drama/제1화 - 동네.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 236, '/webtoon/drama/제2화 - 귀가.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 237, '/webtoon/drama/제3화 - 별.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 238, '/webtoon/drama/제4화 - 카페.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 239, '/webtoon/drama/제5화 - 신발.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 240, '/webtoon/drama/제6화 - 친구.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 241, '/webtoon/drama/제7화 - 토스트.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 242, '/webtoon/drama/제8화 - 커피.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 243, '/webtoon/drama/제9화 - 사진.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 244, '/webtoon/drama/제10화 - 시선.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 245, '/webtoon/drama/제11화 - 웃음_1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 246, '/webtoon/drama/제11화 - 웃음_2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 247, '/webtoon/drama/제12화 - 자리.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 248, '/webtoon/drama/제13화 - 그림자_1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 249, '/webtoon/drama/제13화 - 그림자_2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 250, '/webtoon/drama/제14화 - 상수.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 251, '/webtoon/drama/제15화 - 희영.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 252, '/webtoon/drama/제16화  - 첫눈.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 253, '/webtoon/drama/제17화 - 거리.jpg');


--select * from category;



--E thriller  Category 넣기 '일반' 
--select * from user_information;

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'당신의 모든 순간','free','serial','E','green', '우리', 0, '작가의 말 - 당신의 모든 순간', '/webtoon/webtoonThumbnail/2.jpg');


sel
---episode 정보


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 1, 0, 0, '2014-01-01', '예고편', 'all of your moments', '/webtoon/episodeThumbnail/41.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 2, 0, 0, '2014-01-08', '제1화 - 그러든가_01', 'all of your moments', '/webtoon/episodeThumbnail/42.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 3, 0, 0, '2014-01-15', '제1화 - 그러든가_02','all of your moments',  '/webtoon/episodeThumbnail/43.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 4, 0, 0, '2014-01-22', '제1화 - 그러든가_03','all of your moments',  '/webtoon/episodeThumbnail/44.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 5, 0, 0, '2014-01-29', '제1화 - 그러든가_04','all of your moments',  '/webtoon/episodeThumbnail/45.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 6, 0, 0, '2014-02-05', '제1화 - 그러든가_05', 'all of your moments', '/webtoon/episodeThumbnail/46.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 7, 0, 0, '2014-02-12', '제1화 - 그러든가_06', 'all of your moments', '/webtoon/episodeThumbnail/47.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 8, 0, 0, '2014-02-19', '제2화 - 문이나 잘 잠가_01', 'all of your moments', '/webtoon/episodeThumbnail/48.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 9, 0, 0, '2014-02-26', '제2화 - 문이나 잘 잠가_02', 'all of your moments', '/webtoon/episodeThumbnail/49.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 10, 0, 0, '2014-01-01', '제2화 - 문이나 잘 잠가_03', 'all of your moments', '/webtoon/episodeThumbnail/41.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 11, 0, 0, '2014-01-08', '제2화 - 문이나 잘 잠가_04', 'all of your moments', '/webtoon/episodeThumbnail/42.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 12, 0, 0, '2014-01-15', '제2화 - 문이나 잘 잠가_05','all of your moments',  '/webtoon/episodeThumbnail/43.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 13, 0, 0, '2014-01-22', '제2화 - 문이나 잘 잠가_06','all of your moments',  '/webtoon/episodeThumbnail/44.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 14, 0, 0, '2014-01-29', '제2화 - 문이나 잘 잠가_07','all of your moments',  '/webtoon/episodeThumbnail/45.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 15, 0, 0, '2014-02-05', '제2화 - 문이나 잘 잠가_08', 'all of your moments', '/webtoon/episodeThumbnail/46.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 16, 0, 0, '2014-02-12', '제2화 - 문이나 잘 잠가_09', 'all of your moments', '/webtoon/episodeThumbnail/47.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 17, 0, 0, '2014-02-19', '제2화 - 문이나 잘 잠가_10', 'all of your moments', '/webtoon/episodeThumbnail/48.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 18, 0, 0, '2014-02-26', '제3화 - 가야될 것 같아_01', 'all of your moments', '/webtoon/episodeThumbnail/49.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 19, 0, 0, '2014-03-05', '제3화 - 가야될 것 같아_02','all of your moments',  '/webtoon/episodeThumbnail/50.jpg', null);


--thriller image  
insert into image(image_index, episode_sequence, file_name) 
values(1, 254, '/webtoon/thriller/예고편.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 255, '/webtoon/thriller/제1화 - 그러든가_01.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 256, '/webtoon/thriller/제1화 - 그러든가_02.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 257, '/webtoon/thriller/제1화 - 그러든가_03.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 258, '/webtoon/thriller/제1화 - 그러든가_04.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 259, '/webtoon/thriller/제1화 - 그러든가_05.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 260, '/webtoon/thriller/제1화 - 그러든가_06.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 261, '/webtoon/thriller/제2화 - 문이나 잘 잠가_01.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 262, '/webtoon/thriller/제2화 - 문이나 잘 잠가_02.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 263, '/webtoon/fantasy/제2화 - 문이나 잘 잠가_03.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 264, '/webtoon/fantasy/제2화 - 문이나 잘 잠가_04.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 265, '/webtoon/fantasy/제2화 - 문이나 잘 잠가_05.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 266, '/webtoon/fantasy/제2화 - 문이나 잘 잠가_06.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 267, '/webtoon/fantasy/제2화 - 문이나 잘 잠가_07.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 268, '/webtoon/fantasy/제2화 - 문이나 잘 잠가_08.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 269, '/webtoon/fantasy/제2화 - 문이나 잘 잠가_09.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 270, '/webtoon/fantasy/제2화 - 문이나 잘 잠가_10.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 271, '/webtoon/fantasy/제3화 - 가야될 것 같아_01.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 272, '/webtoon/fantasy/제3화 - 가야될 것 같아_02.jpg');



--select * from category;
--select * from user_information;
--F  일상 '이웃사람'  펀딩작가 : 우리 

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'이웃사람','funding','serial','F','green', '혜리', 1, '이웃사람-?!', '/webtoon/webtoonThumbnail/3.jpg');


--select * from fund;
--'이웃사람' funding --------------------------------------------------------//-------------//-----------------------------------------------------------------------

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,6,6,'2010-04-05','2010-04-10');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,6,7,'2010-04-12','2010-04-17');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,6,8,'2010-04-19','2010-04-24');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,6,9,'2010-04-26','2010-05-01');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,6,10,'2010-05-03','2010-05-08');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,6,11,'2016-12-22','2016-12-27');

--select* from fund;

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 6, 1, 0, 0, '2010-03-01', '예고편.jpg','이웃 사람_?',  '/webtoon/episodeThumbnail/51.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 6, 2, 0, 0, '2010-03-08', '제1화 - 귀가_01','이웃 사람_?',  '/webtoon/episodeThumbnail/52.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 6, 3, 0, 0, '2010-03-15', '제1화 - 귀가_02','이웃 사람_?',  '/webtoon/episodeThumbnail/52.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 6, 4, 0, 0, '2010-03-22', '제1화 - 귀가_03','이웃 사람_?',  '/webtoon/episodeThumbnail/53.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 6, 5, 0, 0, '2010-03-29', '제1화 - 귀가_04','이웃 사람_?',  '/webtoon/episodeThumbnail/54.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 6, 6, 0, 0, '2010-04-05', '제1화 - 귀가_05','이웃 사람_?',  '/webtoon/episodeThumbnail/55.jpg', 193);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 6, 7, 0, 0, '2010-04-12', '제2화 - 손님_01','이웃 사람_?',  '/webtoon/episodeThumbnail/56.jpg', 194);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 6, 8, 0, 0, '2010-04-19', '제2화 - 손님_02','이웃 사람_?',  '/webtoon/episodeThumbnail/57.jpg', 195);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 6, 9, 0, 0, '2010-04-26', '제2화 - 손님_03','이웃 사람_?',  '/webtoon/episodeThumbnail/58.jpg', 196);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 6, 10, 0, 0, '2010-05-03', '제2화 - 손님_04','이웃 사람_?',  '/webtoon/episodeThumbnail/59.jpg', 197);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 6, 11, 0, 0, '2016-12-22', '제2화 - 손님_05','이웃 사람_?',  '/webtoon/episodeThumbnail/60.jpg', 198);



---F 'life' 이웃 사람 넣기 
insert into image(image_index, episode_sequence, file_name) 
values(1, 273, '/webtoon/life/예고편.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 274, '/webtoon/life/제1화 - 귀가_01.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 275, '/webtoon/life/제1화 - 귀가_02.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 276, '/webtoon/life/제1화 - 귀가_03.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 277, '/webtoon/life/제1화 - 귀가_04.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 278, '/webtoon/life/제1화 - 귀가_05.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 279, '/webtoon/life/제2화 - 손님_01.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 280, '/webtoon/life/제2화 - 손님_02.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 281, '/webtoon/life/제2화 - 손님_03.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 282, '/webtoon/life/제2화 - 손님_04.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 283, '/webtoon/life/제2화 - 손님_05.jpg');

--select * FROM  user_information;
------------G ------------------------------------------------
--select * from category;
--G 개그 '그대를 사랑합니다' 펀딩작가 

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'그대를 사랑합니다','funding','serial','G','green', '재이', 1, '그대 사랑합니다', '/webtoon/webtoonThumbnail/6.jpg');



insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,7,6,'2010-04-05','2010-04-10');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,7,7,'2010-04-12','2010-04-17');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,7,8,'2010-04-19','2010-04-24');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,7,9,'2010-04-26','2010-05-01');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,7,10,'2010-05-03','2010-05-08');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,7,11,'2016-12-20','2016-12-25');

---------------------------
--select * from fund;


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 7, 1, 0, 0, '2010-03-01', '예고편', '그대여~', '/webtoon/episodeThumbnail/61.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 7, 2, 0, 0, '2010-03-08', '제1화 - 우유_1', '그대여~', '/webtoon/episodeThumbnail/62.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 7, 3, 0, 0, '2010-03-15', '제1화 - 우유_2', '그대여~', '/webtoon/episodeThumbnail/63.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 7, 4, 0, 0, '2010-03-22', '제1화 - 우유_3', '그대여~', '/webtoon/episodeThumbnail/64.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 7, 5, 0, 0, '2010-03-29', '제1화 - 우유_4', '그대여~', '/webtoon/episodeThumbnail/65.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 7, 6, 0, 0, '2010-04-05', '제1화 - 우유_5', '그대여~', '/webtoon/episodeThumbnail/66.jpg', 199);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 7, 7, 0, 0, '2010-04-12', '제1화 - 우유_6', '그대여~', '/webtoon/episodeThumbnail/1.jpg', 200);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 7, 8, 0, 0, '2010-04-19', '제2화 - 언덕길_1', '그대여~', '/webtoon/episodeThumbnail/2.jpg', 201);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 7, 9, 0, 0, '2010-04-26', '제2화 - 언덕길_2','그대여~',  '/webtoon/episodeThumbnail/3.jpg', 202);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 7, 10, 0, 0, '2010-05-03', '제2화 - 언덕길_3', '그대여~', '/webtoon/episodeThumbnail/4.jpg', 203);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 7, 11, 0, 0, '2016-12-20', '제2화 - 언덕길_4', '그대여~', '/webtoon/episodeThumbnail/4.jpg', 204);


--G 이미지 넣기 

insert into image(image_index, episode_sequence, file_name) 
values(1, 284, '/webtoon/gag/예고편.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 285, '/webtoon/gag/제1화 - 우유_1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 286, '/webtoon/gag/제1화 - 우유_2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 287, '/webtoon/gag/제1화 - 우유_3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 288, '/webtoon/gag/제1화 - 우유_4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 289, '/webtoon/gag/제1화 - 우유_5.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 290, '/webtoon/gag/제1화 - 우유_6.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 291, '/webtoon/gag/제2화 - 언덕길_1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 292, '/webtoon/gag/제2화 - 언덕길_2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 293, '/webtoon/gag/제2화 - 언덕길_3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 294, '/webtoon/gag/제2화 - 언덕길_4.jpg');

--select * from category ;


--H 성인(adult) '순정만화'
--select * from user_information;

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'순정 만화','funding','serial','H','green', '혜리', 1, '어렴풋이', '/webtoon/webtoonThumbnail/4.jpg');


--insert 순정만화 funding 회차;

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,8,6,'2008-03-07','2008-03-12');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,8,7,'2008-03-14','2008-03-19');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,8,8,'2008-03-21','2008-03-26');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,8,9,'2008-03-28','2008-04-02');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,8,10,'2008-04-04','2008-04-09');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,8,11,'2008-04-11','2008-04-16');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,8,12,'2008-04-18','2008-04-23');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,8,13,'2008-04-25','2008-04-30');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,8,14,'2008-05-02','2008-05-07');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,8,15,'2008-05-09','2008-05-14');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,8,16,'2008-05-16','2008-05-21');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,8,17,'2008-05-23','2008-05-28');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,8,18,'2008-05-30','2008-06-04');

insert into fund (fund_code,episode_fund, webtoon_code, episode_number, start_date, due_date)
values (fund_seq.nextval,3000,8,19,'2016-12-21','2016-12-26');

--select * from fund;

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 1, 0, 0, '2008-02-01', 'no.1 - elevator', '어렴풋이', '/webtoon/episodeThumbnail/5.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 2, 0, 0, '2008-02-08', 'no.2 -necktie', '어렴풋이', '/webtoon/episodeThumbnail/6.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 3, 0, 0, '2008-02-15', 'no.3 - present', '어렴풋이', '/webtoon/episodeThumbnail/7.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 4, 0, 0, '2008-02-22', 'no.4 - emotion','어렴풋이',  '/webtoon/episodeThumbnail/8.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 5, 0, 0, '2008-02-29', 'no.5 - same age','어렴풋이',  '/webtoon/episodeThumbnail/9.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 6, 0, 0, '2008-03-07', 'no.6 - couple', '어렴풋이', '/webtoon/episodeThumbnail/10.jpg', 205);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 7, 0, 0, '2008-03-14', 'no.7 - name', '어렴풋이', '/webtoon/episodeThumbnail/11.jpg', 206);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 8, 0, 0, '2008-03-21', 'no.8 - the first snow', '어렴풋이', '/webtoon/episodeThumbnail/12.jpg', 207);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 9, 0, 0, '2008-03-28', 'no.9 - cold', '어렴풋이', '/webtoon/episodeThumbnail/13.jpg', 208);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 10, 0, 0, '2008-04-04', 'no.10 - two of us','어렴풋이',  '/webtoon/episodeThumbnail/14.jpg', 209);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 11, 0, 0, '2008-04-11', 'no.11 -necktie', '어렴풋이', '/webtoon/episodeThumbnail/6.jpg', 210);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 12, 0, 0, '2008-04-18', 'no.12 - present', '어렴풋이', '/webtoon/episodeThumbnail/7.jpg', 211);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 13, 0, 0, '2008-04-25', 'no.13 - emotion','어렴풋이',  '/webtoon/episodeThumbnail/8.jpg', 212);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 14, 0, 0, '2008-05-02', 'no.14 - same age','어렴풋이',  '/webtoon/episodeThumbnail/9.jpg', 213);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 15, 0, 0, '2008-05-09', 'no.15 - couple', '어렴풋이', '/webtoon/episodeThumbnail/10.jpg', 214);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 16, 0, 0, '2008-05-16', 'no.16 - name', '어렴풋이', '/webtoon/episodeThumbnail/11.jpg', 215);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 17, 0, 0, '2008-05-23', 'no.17 - the first snow', '어렴풋이', '/webtoon/episodeThumbnail/12.jpg', 216);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 18, 0, 0, '2008-05-30', 'no.18 - cold', '어렴풋이', '/webtoon/episodeThumbnail/13.jpg', 217);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 19, 0, 0, '2016-12-21', 'no.19 - two of us','어렴풋이',  '/webtoon/episodeThumbnail/14.jpg', 218);




--8 adult  image 넣기 --

insert into image(image_index, episode_sequence, file_name) 
values(1, 295, '/webtoon/adult/no.1 - elevator.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 296, '/webtoon/adult/no.2 -necktie.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 297, '/webtoon/adult/no.3 - present.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 298, '/webtoon/adult/no.4 - emotion.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 299, '/webtoon/adult/no.5 - same age.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 300, '/webtoon/adult/no.6 - couple.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 301, '/webtoon/adult/no.7 - name.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 302, '/webtoon/adult/no.8 - the first snow.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 303, '/webtoon/adult/no.9 - cold.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 304, '/webtoon/adult/no.10 - two of us.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 305, '/webtoon/adult/no.11 - cigarrete.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 306, '/webtoon/adult/no.12 - thinkingOfYou.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 307, '/webtoon/adult/no.13 - allRight.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 308, '/webtoon/adult/no.14 - text.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 309, '/webtoon/adult/no.15 - whiteChristmas.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 310, '/webtoon/adult/no.16 - thesedays.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 311, '/webtoon/adult/no.17 - changes.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 312, '/webtoon/adult/no.18 - worries.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 313, '/webtoon/adult/no.19 - tip.jpg');


-- I 기타 일반작가 수정  작품 '타이밍'
--select * from category;
--elect * from user_information;

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'타이밍','free','complete','I','green', '혜리', 0, '모든 건 타이밍~', '/webtoon/webtoonThumbnail/5.jpg');

--


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 1, 0, 0, '2008-06-01', '예고편','모든 건 타이밍~',  '/webtoon/episodeThumbnail/15.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 2, 0, 0, '2008-06-08', '제1화 - 순간의 틈_1','모든 건 타이밍~',  '/webtoon/episodeThumbnail/16.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 3, 0, 0, '2008-06-15', '제1화 - 순간의 틈_2','모든 건 타이밍~',  '/webtoon/episodeThumbnail/17.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 4, 0, 0, '2008-06-22', '제1화 - 순간의 틈_3', '모든 건 타이밍~', '/webtoon/episodeThumbnail/18.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 5, 0, 0, '2008-06-29', '제1화 - 순간의 틈_4','모든 건 타이밍~',  '/webtoon/episodeThumbnail/19.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 6, 0, 0, '2008-07-06', '제2화 - 10분_1','모든 건 타이밍~',  '/webtoon/episodeThumbnail/20.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 7, 0, 0, '2008-07-13', '제2화 - 10분_2', '모든 건 타이밍~', '/webtoon/episodeThumbnail/21.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 8, 0, 0, '2008-07-20', '제2화 - 10분_3','모든 건 타이밍~',  '/webtoon/episodeThumbnail/22.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 9, 0, 0, '2008-07-27', '제2화 - 10분_4', '모든 건 타이밍~', '/webtoon/episodeThumbnail/23.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 10, 0, 0, '2008-08-03', '제2화 - 10분_5', '모든 건 타이밍~', '/webtoon/episodeThumbnail/24.jpg', null);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 11, 0, 0, '2008-08-10', '제3화 - 10초_1','모든 건 타이밍~',  '/webtoon/episodeThumbnail/16.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 12, 0, 0, '2008-08-17', '제3화 - 10초_2','모든 건 타이밍~',  '/webtoon/episodeThumbnail/17.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 13, 0, 0, '2008-08-24', '제3화 - 10초_3', '모든 건 타이밍~', '/webtoon/episodeThumbnail/18.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 14, 0, 0, '2008-08-31', '제3화 - 10초_4','모든 건 타이밍~',  '/webtoon/episodeThumbnail/19.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 15, 0, 0, '2008-09-07', '제3화 - 10초_5','모든 건 타이밍~',  '/webtoon/episodeThumbnail/20.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 16, 0, 0, '2008-09-14', '제4화 - 9월15일_1', '모든 건 타이밍~', '/webtoon/episodeThumbnail/21.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 17, 0, 0, '2008-09-21', '제4화 - 9월15일_2','모든 건 타이밍~',  '/webtoon/episodeThumbnail/22.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 18, 0, 0, '2008-09-28', '제4화 - 9월15일_3', '모든 건 타이밍~', '/webtoon/episodeThumbnail/23.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 19, 0, 0, '2008-10-05', '제4화 - 9월15일_4', '모든 건 타이밍~', '/webtoon/episodeThumbnail/24.jpg', null);


---image 넣기 

insert into image(image_index, episode_sequence, file_name) 
values(1, 314, '/webtoon/etc/예고편.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 315, '/webtoon/etc/제1화 - 순간의 틈_1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 316, '/webtoon/etc/제1화 - 순간의 틈_2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 317, '/webtoon/etc/제1화 - 순간의 틈_3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 318, '/webtoon/etc/제1화 - 순간의 틈_4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 319, '/webtoon/etc/제2화 - 10분_1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 320, '/webtoon/etc/제2화 - 10분_2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 321, '/webtoon/etc/제2화 - 10분_3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 322, '/webtoon/etc/제2화 - 10분_4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 323, '/webtoon/etc/제2화 - 10분_5.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 324, '/webtoon/etc/제3화 - 10초_1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 325, '/webtoon/etc/제3화 - 10초_2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 326, '/webtoon/etc/제3화 - 10초_3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 327, '/webtoon/etc/제3화 - 10초_4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 328, '/webtoon/etc/제3화 - 10초_5.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 329, '/webtoon/etc/제4화 - 9월15일_1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 330, '/webtoon/etc/제4화 - 9월15일_2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 331, '/webtoon/etc/제4화 - 9월15일_3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 332, '/webtoon/etc/제4화 - 9월15일_4.jpg');



commit;

--구독 하기 


insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'tiger@hanmail.net',1);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'tiger@hanmail.net',2);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'tiger@hanmail.net',3);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'tiger@hanmail.net',4);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'tiger@hanmail.net',5);

---

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'curry@gmail.com',6);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'curry@gmail.com',7);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'curry@gmail.com',8);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'curry@gmail.com',9);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'curry@gmail.com',1);

---

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'awaynee@hanmail.net',2);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'awaynee@hanmail.net',3);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'awaynee@hanmail.net',4);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'awaynee@hanmail.net',5);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'awaynee@hanmail.net',6);

---

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'kevin@gmail.com',7);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'kevin@gmail.com',8);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'kevin@gmail.com',9);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'kevin@gmail.com',1);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'kevin@gmail.com',2);

---

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'leonard@naver.com',3);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'leonard@naver.com',4);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'leonard@naver.com',5);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'leonard@naver.com',6);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'leonard@naver.com',7);


---

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'chris@gmail.com',8);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'chris@gmail.com',9);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'chris@gmail.com',1);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'chris@gmail.com',2);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'chris@gmail.com',3);


---

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'lionel@hanmail.net',4);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'lionel@hanmail.net',5);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'lionel@hanmail.net',6);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'lionel@hanmail.net',9);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'lionel@hanmail.net',7);


---

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'eden@naver.com',8);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'eden@naver.com',9);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'eden@naver.com',1);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'eden@naver.com',2);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'eden@naver.com',3);


---

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'pedro@hanmail.net',4);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'pedro@hanmail.net',5);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'pedro@hanmail.net',6);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'pedro@hanmail.net',7);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'pedro@hanmail.net',8);


---

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'dahyeon@gmail.com',9);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'dahyeon@gmail.com',1);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'dahyeon@gmail.com',2);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'dahyeon@gmail.com',3);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'dahyeon@gmail.com',4);


---

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'girlfriend@hanmail.net',5);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'girlfriend@hanmail.net',6);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'girlfriend@hanmail.net',7);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'girlfriend@hanmail.net',8);

insert into subscription (subscription_sequence,email,webtoon_code) values (subscription_seq.nextval,'girlfriend@hanmail.net',9);



commit;


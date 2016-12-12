-- sample DB 
select * from webtoon;
select * from user_information;
update user_information set cash_point = 160 where email='tu12@naver.com'


--1 user info

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('minah@naver.com','민아','minah','01099335577',11000,'펀딩작가','방민아','여','930513');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('aoa@hanmail.net','설현','aoa','01023226577',32000,'작가','김설현','여','950103');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('dahyeon@gmail.com','다현','dahyeon','01088997788',1000,'독자','김다현','남','980528');

--2 additional info 

insert into additional_info (email,account_password,bank_name,account_number,identification_card)
values ('minah@naver.com','minah','새마을금고','444555666777','identification5.jpg');

-- webtoon table 
-- 설현 작가 , 민아 펀딩작가 
-- webtoon-state : 연재 , 휴재 , 블라인드 , 연재완료 (serial,pause,blind,complete)
-- penalty : red, yellow, green   
-- funding_period : 7, 14 ( 일 단위(day))

delete from webtoon 

select * from webtoon;
select * from category;

delete from webtoon;

-- webtoon webtoon-state : 연재

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code, nickname, funding_period, summary, webtoon_thumbnail)
values (1,'순정만화','일반','serial','A', '설현', 1, '아재와 학생의 some', null);

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period,summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'아파트','펀딩','serial ','B','green','민아',7,'아파트 괴담',null);

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period,summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'바보','유료','serial','C','green','민아',null,'아재와 학생의 some',null);

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period,summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'조명가게','펀딩','serial','F','green','민아',14,null,null);



-- webtoon-state : 휴재
insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period,summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'타이밍','일반','pause','D','green','민아',null,null,null);

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period,summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'26년','일반','pause','E','green','민아',null,null,null);

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period,summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'그대를 사랑합니다','일반','pause','F','green','민아',null,null,null);

--webtoon state : 연재 완료

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period,summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'이웃사람','펀딩','complete','D','green','민아',7,null,null);

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period,summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'어게인','펀딩','complete','E','green','민아',7,null,null);

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period,summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'당신의 모든 순간','펀딩','complete','F','green','민아',14,null,null);


--delete from webtoon; 
--select * from webtoon;

--apply_fund 신청 - 일반작품 중 일정 score 를 넘겨야 funding 신청 가능 

insert into apply_fund (apply_fund_sequence, email, webtoon_code,score)
values(a_f_seq,'minah@naver.com',4,900);


--appy_paid 신청 

insert into apply_paid (apply_paid_sequence,email,webtoon_code)
values ( a_p_seq.NEXTVAL,'minah@naver.com',10);



--funding webtoon 펀딩 신청 

--insert into fund (fund_code,episode_fund,webtoon_code,episode_number)
--values (fund_seq.NEXTVAL,50000,10,4);

--DELETE FROM FUND 


--펀딩 웹툰의 기본 정보  (webtoon code 2,4,8,9,10 

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,2,4);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,2000,2,5);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,4,4);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,4000,4,5);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,8,4);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values fund_seq.(nextval,3000,8,5);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,9,4);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,9,5);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,10,4);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,10,5);



--episode 회차별 정보 

	-- fundingWebtoon episode 추가 2,4, 8,9,10
	insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
			recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
	values (1, 1, 1, 0, 0, '2016-03-02 ', 'no.1 - elevator', '작가의말 엘레베이터에서?', null, null);
	
	insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
			recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
	values (2, 1, 2, 0, 0, '2016-03-09 ', 'no.2 -necktie', '작가의말 넥타이 털림', null, null);
	
	insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
			recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
	values (3, 1, 3, 0, 0, '2016-03-16 ', 'no.3 - present', '작가의말 선물?', null, null);
	
	
	-- *** image 테이블 보류 
	--insert into image (image_index,episode_sequence,file_name) values ()
	insert into image(image_index, episode_sequence, file_name) 
	values(1, 1, '/01.romance comics/no.1 - elevator.jpg');
	
	insert into image(image_index, episode_sequence, file_name) 
	values(1, 2, '/01.romance comics/no.2 -necktie.jpg');
	
	insert into image(image_index, episode_sequence, file_name) 
	values(1, 3, '/01.romance comics/no.3 - present.jpg');

	--  	
	--insert (start_date,due_date,episode_sequence) values ()
	insert webtoon_
	

	
--delete from webtoon;
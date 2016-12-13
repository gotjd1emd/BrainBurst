-- webtoon_category_DB 변경하였습니다.

-- 아이디는 설현과 민아를 사용했습니다. user Informatio_DB

-- insert  카테고리 A action webtoon 제목 : 아파트 -  ********   일반작가    *******
commit;

select * from tab;
select * from webtoon;
select * from episode;
insert into webtoon;
delete from episode;

create sequence episode_seq 
	start with 1
	increment by 1 
	nocache;

drop sequence episode_seq;


create sequence fund_seq 
	start with 1
	increment by 1 
	nocache;

drop sequence fund_seq;


commit;

-- webtoon 타이틀 + 제목 


(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (1,'아파트','free','serial','A','green', '설현', null, '아파트에서..?!', null);

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period,summary, webtoon_thumbnail)
values (2,'어게인','funding','serial ','B','green','민아',7,'아파트 괴담',null);
--
--------------------------------------------------------------------------------------------------------------------------------------------
----     ******************* Action '아파트' episode 넣기 // 일반 작품   C:\webtoon\action/아파트 폴더안에 이미지 바로 넣기   *****************************
--
--DELETE FROM EPISODE WHERE EPISODE_SEQUENCE = 1
--SELECT * FROM EPISODE;

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 1, 0, 0, '2016-03-02 ', '예고편', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 2, 0, 0, '2016-03-02 ', '제1화 - 아파트_1', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 3, 0, 0, '2016-03-02 ', '제1화 - 아파트_2', '작가의말 엘레베이터에서?', null, null);
insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 4, 0, 0, '2016-03-02 ', '제1화 - 아파트_3', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 5, 0, 0, '2016-03-02 ', '제1화 - 아파트_4', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 6, 0, 0, '2016-03-02 ', '제1화 - 아파트_5', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 7, 0, 0, '2016-03-02 ', '제2화 - 그 남자의 시선_1', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 8, 0, 0, '2016-03-02 ', '제2화 - 그 남자의 시선_2', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 9, 0, 0, '2016-03-02 ', '제2화 - 그 남자의 시선_3', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 10, 0, 0, '2016-03-02 ', '제2화 - 그 남자의 시선_4', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 11, 0, 0, '2016-03-02 ', '제2화 - 그 남자의 시선_5', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 12, 0, 0, '2016-03-02 ', '제3화 - 누군가 날 부르고 있다_1', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 13, 0, 0, '2016-03-02 ', '제3화 - 누군가 날 부르고 있다_2', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 14, 0, 0, '2016-03-02 ', '제3화 - 누군가 날 부르고 있다_3', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 15, 0, 0, '2016-03-02 ', '제3화 - 누군가 날 부르고 있다_4', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 16, 0, 0, '2016-03-02 ', '제3화 - 누군가 날 부르고 있다_5', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 17, 0, 0, '2016-03-02 ', '제6화 - 복도에서_1', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 18, 0, 0, '2016-03-02 ', '제6화 - 복도에서_2', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 19, 0, 0, '2016-03-02 ', '제6화 - 복도에서_3', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 20, 0, 0, '2016-03-02 ', '제6화 - 복도에서_4', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 21, 0, 0, '2016-03-02 ', '제6화 - 복도에서_5', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 22, 0, 0, '2016-03-02 ', '제7화 - 옆집 여자_1', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 23, 0, 0, '2016-03-02 ', '제7화 - 옆집 여자_2', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 24, 0, 0, '2016-03-02 ', '제7화 - 옆집 여자_3', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 25, 0, 0, '2016-03-02 ', '제7화 - 옆집 여자_4', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 26, 0, 0, '2016-03-02 ', '제7화 - 옆집 여자_5', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 27, 0, 0, '2016-03-02 ', '제8화 - 귀신_1', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 28, 0, 0, '2016-03-02 ', '제8화 - 귀신_2', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 29, 0, 0, '2016-03-02 ', '제8화 - 귀신_3', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 30, 0, 0, '2016-03-02 ', '제8화 - 귀신_4', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 31, 0, 0, '2016-03-02 ', '제8화 - 귀신_5', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 32, 0, 0, '2016-03-02 ', '제8화 - 귀신_6', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 33, 0, 0, '2016-03-02 ', '제8화 - 귀신_7', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 34, 0, 0, '2016-03-02 ', '제8화 - 귀신_8', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 35, 0, 0, '2016-03-02 ', '제8화 - 귀신_9', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 36, 0, 0, '2016-03-02 ', '제8화 - 귀신_10', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 37, 0, 0, '2016-03-02 ', '제8화 - 귀신_11', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 38, 0, 0, '2016-03-02 ', '제8화 - 귀신_12', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 39, 0, 0, '2016-03-02 ', '제8화 - 귀신_13', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 40, 0, 0, '2016-03-02 ', '제8화 - 귀신_14', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 41, 0, 0, '2016-03-02 ', '제8화 - 귀신_15', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 42, 0, 0, '2016-03-02 ', '제8화 - 귀신_16', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 43, 0, 0, '2016-03-02 ', '제8화 - 귀신_17', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 44, 0, 0, '2016-03-02 ', '제8화 - 귀신_18', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 45, 0, 0, '2016-03-02 ', '제8화 - 귀신_19', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 46, 0, 0, '2016-03-02 ', '제8화 - 귀신_20', '작가의말 엘레베이터에서?', null, null);

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
values (episode_seq.NEXTVAL, 2, 1, 0, 0, '2011-01-01', '예고편', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 2, 0, 0, '2011-01-08', '제1화 - 1부 어게인 1화_01', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 3, 0, 0, '2011-01-15', '제1화 - 1부 어게인 1화_02', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 4, 0, 0, '2011-01-22', '제1화 - 1부 어게인 1화_03', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 5, 0, 0, '2011-01-29', '제1화 - 1부 어게인 1화_04', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 6, 0, 0, '2011-02-05', '제1화 - 1부 어게인 1화_05', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 7, 0, 0, '2011-02-12', '제1화 - 1부 어게인 1화_06', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 8, 0, 0, '2011-02-19', '제1화 - 1부 어게인 1화_07', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 9, 0, 0, '2011-02-26', '제1화 - 1부 어게인 1화_08', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 10, 0, 0, '2011-03-04', '제1화 - 1부 어게인 1화_09', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 11, 0, 0, '2011-03-11', '제1화 - 1부 어게인 1화_10', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 12, 0, 0, '2011-03-18', '제2화 - 1부 어게인 2화_01', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 13, 0, 0, '2011-03-25', '제2화 - 1부 어게인 2화_02', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 14, 0, 0, '2011-04-01', '제2화 - 1부 어게인 2화_03', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 15, 0, 0, '2011-04-08', '제2화 - 1부 어게인 2화_04', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 16, 0, 0, '2011-04-15', '제2화 - 1부 어게인 2화_06', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 17, 0, 0, '2011-04-22', '제2화 - 1부 어게인 2화_07', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 18, 0, 0, '2011-04-29', '제2화 - 1부 어게인 2화_08', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 19, 0, 0, '2011-05-06', '제2화 - 1부 어게인 2화_09', '작가의말 엘레베이터에서?', null, null);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 20, 0, 0, '2011-05-13', '제2화 - 1부 어게인 2화_10', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 21, 0, 0, '2011-05-20', '제2화 - 1부 어게인 2화_11', '작가의말 엘레베이터에서?', null, null);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 22, 0, 0, '2011-05-27', '제2화 - 1부 어게인 2화_12', '작가의말 엘레베이터에서?', null, null);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 23, 0, 0, '2011-06-03', '제2화 - 1부 어게인 2화_13', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 24, 0, 0, '2011-06-10', '제2화 - 1부 어게인 2화_14', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 25, 0, 0, '2011-06-17', '제2화 - 1부 어게인 2화_15', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 26, 0, 0, '2011-06-23', '제2화 - 1부 어게인 2화_16', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 27, 0, 0, '2011-06-30', '제2화 - 1부 어게인 2화_17', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 28, 0, 0, '2011-07-07', '제2화 - 1부 어게인 2화_18', '작가의말 엘레베이터에서?', null, null);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 29, 0, 0, '2011-07-09', '제3화 - 1부 어게인 3화_01', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 30, 0, 0, '2011-07-16', '제3화 - 1부 어게인 3화_02', '작가의말 엘레베이터에서?', null, null);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 31, 0, 0, '2011-07-23', '제3화 - 1부 어게인 3화_03', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 32, 0, 0, '2011-07-30', '제3화 - 1부 어게인 3화_04', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 33, 0, 0, '2011-08-05', '제3화 - 1부 어게인 3화_05', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 34, 0, 0, '2011-08-12', '제3화 - 1부 어게인 3화_06', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 35, 0, 0, '2011-08-19', '제3화 - 1부 어게인 3화_07', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 36, 0, 0, '2011-08-26', '제3화 - 1부 어게인 3화_08', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 37, 0, 0, '2011-09-02', '제3화 - 1부 어게인 3화_09', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 38, 0, 0, '2011-09-09', '제3화 - 1부 어게인 3화_10', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 39, 0, 0, '2011-09-16', '제4화 - 1부 어게인 4화_01', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 40, 0, 0, '2011-09-22', '제4화 - 1부 어게인 4화_02', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 41, 0, 0, '2011-09-29', '제4화 - 1부 어게인 4화_03', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 42, 0, 0, '2011-10-06', '제4화 - 1부 어게인 4화_04', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 43, 0, 0, '2011-10-13', '제4화 - 1부 어게인 4화_05', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 44, 0, 0, '2011-10-20', '제4화 - 1부 어게인 4화_06', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 45, 0, 0, '2011-10-27', '제4화 - 1부 어게인 4화_07', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 46, 0, 0, '2011-11-03', '제4화 - 1부 어게인 4화_08', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 47, 0, 0, '2011-11-10', '제4화 - 1부 어게인 4화_09', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 48, 0, 0, '2011-11-17', '제4화 - 1부 어게인 4화_10', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 49, 0, 0, '2011-11-24', '제5화 - 1부 어게인 5화_1', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 50, 0, 0, '2011-12-02', '제5화 - 1부 어게인 5화_2', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 51, 0, 0, '2011-12-09', '제5화 - 1부 어게인 5화_3', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 52, 0, 0, '2011-12-16', '제5화 - 1부 어게인 5화_4', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 53, 0, 0, '2011-12-23', '제5화 - 1부 어게인 5화_5', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 54, 0, 0, '2011-12-30', '제5화 - 1부 어게인 5화_6', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 55, 0, 0, '2012-01-06 ', '제5화 - 1부 어게인 5화_7', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 56, 0, 0, '2012-01-13', '제5화 - 1부 어게인 5화_8', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 57, 0, 0, '2012-01-20', '제5화 - 1부 어게인 5화_9', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 58, 0, 0, '2011-01-27', '제5화 - 1부 어게인 5화_10', '작가의말 엘레베이터에서?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 59, 0, 0, '2011-02-03', '제5화 - 1부 어게인 5화_11', '작가의말 엘레베이터에서?', null, null);



--------------------- c:/webtoon/sf/어게인 이미지 모두 다  예고편 포함 59개   -----------------------------------------------------------------------------

insert into image(image_index, episode_sequence, file_name) 
values(1, 1, '/webtoon/sf/예고편.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 2, '/webtoon/sf/제1화 - 1부 어게인 1화_01.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 3, '/webtoon/sf/제1화 - 1부 어게인 1화_02.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 4, '/webtoon/sf/제1화 - 1부 어게인 1화_03.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 5, '/webtoon/sf/제1화 - 1부 어게인 1화_04.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 6, '/webtoon/sf/제1화 - 1부 어게인 1화_05.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 7, '/webtoon/sf/제1화 - 1부 어게인 1화_06.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 8, '/webtoon/sf/제1화 - 1부 어게인 1화_07.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 9, '/webtoon/sf/제1화 - 1부 어게인 1화_08.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 10, '/webtoon/sf/제1화 - 1부 어게인 1화_09.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 11, '/webtoon/sf/제1화 - 1부 어게인 1화_10.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 12, '/webtoon/sf/제2화 - 1부 어게인 2화_01.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 13, '/webtoon/sf/제2화 - 1부 어게인 2화_02.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 14, '/webtoon/sf/제2화 - 1부 어게인 2화_03.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 15, '/webtoon/sf/제2화 - 1부 어게인 2화_04.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 16, '/webtoon/sf/제2화 - 1부 어게인 2화_05.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 17, '/webtoon/sf/제2화 - 1부 어게인 2화_06.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 18, '/webtoon/sf/제2화 - 1부 어게인 2화_07.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 19, '/webtoon/sf/제2화 - 1부 어게인 2화_08.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 20, '/webtoon/sf/제2화 - 1부 어게인 2화_09.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 21, '/webtoon/sf/제2화 - 1부 어게인 2화_10.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 22, '/webtoon/sf/제2화 - 1부 어게인 2화_11.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 23, '/webtoon/sf/제2화 - 1부 어게인 2화_12.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 24, '/webtoon/sf/제2화 - 1부 어게인 2화_13.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 25, '/webtoon/sf/제2화 - 1부 어게인 2화_14.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 26, '/webtoon/sf/제2화 - 1부 어게인 2화_15.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 27, '/webtoon/sf/제2화 - 1부 어게인 2화_16.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 28, '/webtoon/sf/제2화 - 1부 어게인 2화_17.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 29, '/webtoon/sf/제2화 - 1부 어게인 2화_18.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 30, '/webtoon/sf/제3화 - 1부 어게인 3화_01.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 31, '/webtoon/sf/제3화 - 1부 어게인 3화_02.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 32, '/webtoon/sf/제3화 - 1부 어게인 3화_03.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 33, '/webtoon/sf/제3화 - 1부 어게인 3화_04.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 34, '/webtoon/sf/제3화 - 1부 어게인 3화_05.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 35, '/webtoon/sf/제3화 - 1부 어게인 3화_06.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 36, '/webtoon/sf/제3화 - 1부 어게인 3화_07.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 37, '/webtoon/sf/제3화 - 1부 어게인 3화_08.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 38, '/webtoon/sf/제3화 - 1부 어게인 3화_09.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 39, '/webtoon/sf/제3화 - 1부 어게인 3화_10.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 40, '/webtoon/sf/제4화 - 1부 어게인 4화_01.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 41, '/webtoon/sf/제4화 - 1부 어게인 4화_02.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 42, '/webtoon/sf/제4화 - 1부 어게인 4화_03.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 43, '/webtoon/sf/제4화 - 1부 어게인 4화_04.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 44, '/webtoon/sf/제4화 - 1부 어게인 4화_05.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 45, '/webtoon/sf/제4화 - 1부 어게인 4화_06.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 46, '/webtoon/sf/제4화 - 1부 어게인 4화_07.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 47, '/webtoon/sf/제4화 - 1부 어게인 4화_08.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 48, '/webtoon/sf/제4화 - 1부 어게인 4화_09.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 49, '/webtoon/sf/제5화 - 1부 어게인 5화_01.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 50, '/webtoon/sf/제5화 - 1부 어게인 5화_02.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 51, '/webtoon/sf/제5화 - 1부 어게인 5화_03.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 52, '/webtoon/sf/제5화 - 1부 어게인 5화_04.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 53, '/webtoon/sf/제5화 - 1부 어게인 5화_05.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 54, '/webtoon/sf/제5화 - 1부 어게인 5화_06.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 55, '/webtoon/sf/제5화 - 1부 어게인 5화_07.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 56, '/webtoon/sf/제5화 - 1부 어게인 5화_08.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 57, '/webtoon/sf/제5화 - 1부 어게인 5화_09.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 58, '/webtoon/sf/제5화 - 1부 어게인 5화_10.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 59, '/webtoon/sf/제5화 - 1부 어게인 5화_11.jpg');


select * from image;

--delete from image;
--select * from image;
--select * from episode where webtoon_code = 2;

 --delete from episode;

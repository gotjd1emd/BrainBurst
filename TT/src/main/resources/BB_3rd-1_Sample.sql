-- drama category  펀딩작가 고은  제목 : 바보 

select * from webtoon;
  --1. webtoon 정보
insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (4,'바보','funding','complete','D','green', '고은', 1, '바보-?!', '/webtoon/thumbNail_webtoon/1.jpg');


  -- drama funding 회차 
 select  * from fund;

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,4,6);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,4,7);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,4,8);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,4,9);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,4,10);

select * from fund;
---episode 정보

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 1, 0, 0, '2014-01-01', '제1화 - 동네', '작가의말 바브바브', '/webtoon/thumbNail_episode/30.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 2, 0, 0, '2014-01-08', '제2화 - 귀가', '작가의말 바브바브', '/webtoon/thumbNail_episode/31.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 3, 0, 0, '2014-01-15', '제3화 - 별', '작가의말 바브바브', '/webtoon/thumbNail_episode/32.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 4, 0, 0, '2014-01-22', '제4화 - 카페', '작가의말 바브바브', '/webtoon/thumbNail_episode/33.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 5, 0, 0, '2014-01-29', '제5화 - 신발', '작가의말 바브바브', '/webtoon/thumbNail_episode/34.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 6, 0, 0, '2014-02-05', '제6화 - 친구', '작가의말 바브바브', '/webtoon/thumbNail_episode/35.jpg', 179);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 7, 0, 0, '2014-02-12', '제7화 - 토스트', '작가의말 바브바브', '/webtoon/thumbNail_episode/36.jpg', 180);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 8, 0, 0, '2014-02-19', '제8화 - 커피', '작가의말 바브바브', '/webtoon/thumbNail_episode/37.jpg', 181);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 9, 0, 0, '2014-02-26', '제9화 - 사진', '작가의말 바브바브', '/webtoon/thumbNail_episode/38.jpg', 182);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 10, 0, 0, '2014-03-05', '제10화 - 시선', '작가의말 바브바브', '/webtoon/thumbNail_episode/39.jpg', 183);


--회차별 image  넣기 
select* from image;

insert into image(image_index, episode_sequence, file_name) 
values(1, 235, '/webtoon/fantasy/제1화 - 동네.jpg_13.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 236, '/webtoon/fantasy/제2화 - 귀가.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 237, '/webtoon/fantasy/제3화 - 별.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 238, '/webtoon/fantasy/제4화 - 카페.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 239, '/webtoon/fantasy/제5화 - 신발.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 240, '/webtoon/fantasy/제6화 - 친구.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 241, '/webtoon/fantasy/제7화 - 토스트.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 242, '/webtoon/fantasy/제8화 - 커피.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 243, '/webtoon/fantasy/제9화 - 사진.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 244, '/webtoon/fantasy/제10화 - 시선.jpg');

--select * from category;



--E thriller  Category 넣기 '일반' 
--select * from user_information;

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (5,'당신의 모든 순간','free','serial','D','green', '우리', 0, '작가의 말 - 당신의 모든 순간', '/webtoon/thumbNail_webtoon/2.jpg');



---episode 정보


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 1, 0, 0, '2014-01-01', '예고편', 'all of your moments', '/webtoon/thumbNail_episode/41.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 2, 0, 0, '2014-01-08', '제1화 - 그러든가_01', 'all of your moments', '/webtoon/thumbNail_episode/42.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 3, 0, 0, '2014-01-15', '제1화 - 그러든가_02','all of your moments',  '/webtoon/thumbNail_episode/43.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 4, 0, 0, '2014-01-22', '제1화 - 그러든가_03','all of your moments',  '/webtoon/thumbNail_episode/44.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 5, 0, 0, '2014-01-29', '제1화 - 그러든가_04','all of your moments',  '/webtoon/thumbNail_episode/45.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 6, 0, 0, '2014-02-05', '제1화 - 그러든가_05', 'all of your moments', '/webtoon/thumbNail_episode/46.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 7, 0, 0, '2014-02-12', '제1화 - 그러든가_06', 'all of your moments', '/webtoon/thumbNail_episode/47.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 8, 0, 0, '2014-02-19', '제2화 - 문이나 잘 잠가_01', 'all of your moments', '/webtoon/thumbNail_episode/48.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 9, 0, 0, '2014-02-26', '제2화 - 문이나 잘 잠가_02', 'all of your moments', '/webtoon/thumbNail_episode/49.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 10, 0, 0, '2014-03-05', '제2화 - 문이나 잘 잠가_03','all of your moments',  '/webtoon/thumbNail_episode/50.jpg', null);

--thriller image  
insert into image(image_index, episode_sequence, file_name) 
values(1, 245, '/webtoon/thriller/예고편.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 246, '/webtoon/thriller/제1화 - 그러든가_01.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 247, '/webtoon/thriller/제1화 - 그러든가_02.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 248, '/webtoon/thriller/제1화 - 그러든가_03.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 249, '/webtoon/thriller/제1화 - 그러든가_04.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 250, '/webtoon/thriller/제1화 - 그러든가_05.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 251, '/webtoon/thriller/제1화 - 그러든가_06.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 252, '/webtoon/thriller/제2화 - 문이나 잘 잠가_01.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 253, '/webtoon/thriller/제2화 - 문이나 잘 잠가_02.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 254, '/webtoon/fantasy/제2화 - 문이나 잘 잠가_03.jpg');

--select * from category;
--select * from user_information;
--F  일상 '이웃사람'  펀딩작가 : 우리 

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (6,'이웃사람','funding','serial','F','green', '혜리', 1, '이웃사람-?!', '/webtoon/thumbNail_webtoon/3.jpg');


--'이웃사람' funding 

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,6,6);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,6,7);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,6,8);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,6,9);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,6,10);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 6, 1, 0, 0, '2010-03-01', '예고편.jpg','이웃 사람_?',  '/webtoon/thumbNail_episode/51.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 6, 2, 0, 0, '2010-01-08', '제1화 - 귀가_01','이웃 사람_?',  '/webtoon/thumbNail_episode/52.jpg', null);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 6, 3, 0, 0, '2010-01-15', '제1화 - 귀가_02','이웃 사람_?',  '/webtoon/thumbNail_episode/53.jpg', null);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 6, 4, 0, 0, '2010-01-22', '제1화 - 귀가_03','이웃 사람_?',  '/webtoon/thumbNail_episode/54.jpg', null);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 6, 5, 0, 0, '2010-01-29', '제1화 - 귀가_04','이웃 사람_?',  '/webtoon/thumbNail_episode/55.jpg', null);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 6, 6, 0, 0, '2010-02-05', '제1화 - 귀가_05','이웃 사람_?',  '/webtoon/thumbNail_episode/56.jpg', 135);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 6, 7, 0, 0, '2010-02-12', '제2화 - 손님_01','이웃 사람_?',  '/webtoon/thumbNail_episode/57.jpg', 136);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 6, 8, 0, 0, '2010-02-19', '제2화 - 손님_02','이웃 사람_?',  '/webtoon/thumbNail_episode/58.jpg', 137);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 6, 9, 0, 0, '2010-02-26', '제2화 - 손님_03','이웃 사람_?',  '/webtoon/thumbNail_episode/59.jpg', 138);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 6, 10, 0, 0, '2010-03-05', '제2화 - 손님_04','이웃 사람_?',  '/webtoon/thumbNail_episode/60.jpg', 139);



---F 'life' 이웃 사람 넣기 
insert into image(image_index, episode_sequence, file_name) 
values(1, 255, '/webtoon/life/예고편.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 256, '/webtoon/life/제1화 - 귀가_01.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 257, '/webtoon/life/제1화 - 귀가_02.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 258, '/webtoon/life/제1화 - 귀가_03.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 259, '/webtoon/life/제1화 - 귀가_04.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 260, '/webtoon/life/제1화 - 귀가_05.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 261, '/webtoon/life/제2화 - 손님_01.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 262, '/webtoon/life/제2화 - 손님_02.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 263, '/webtoon/life/제2화 - 손님_03.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 264, '/webtoon/life/제2화 - 손님_04.jpg');


--select * FROM  user_information;
------------G ------------------------------------------------
--select * from category;
--G 개그 '그대를 사랑합니다' 펀딩작가 

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (7,'그대를 사랑합니다','funding','serial','G','green', '재이', 1, '그대 사랑합니다', '/webtoon/thumbNail_webtoon/6.jpg');


insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,7,6);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,7,7);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,7,8);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,7,9);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,7,10);


---------------------------


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 7, 10, 0, 0, '2010-03-01', '예고편', '그대여~', '/webtoon/thumbNail_episode/61.jpg', null);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 7, 10, 0, 0, '2010-03-08', '제1화 - 우유_1', '그대여~', '/webtoon/thumbNail_episode/62.jpg', null);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 7, 10, 0, 0, '2010-03-15', '제1화 - 우유_2', '그대여~', '/webtoon/thumbNail_episode/63.jpg', null);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 7, 10, 0, 0, '2010-03-22', '제1화 - 우유_3', '그대여~', '/webtoon/thumbNail_episode/64.jpg', null);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 7, 10, 0, 0, '2010-03-22', '제1화 - 우유_4', '그대여~', '/webtoon/thumbNail_episode/65.jpg', null);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 7, 10, 0, 0, '2010-03-29', '제1화 - 우유_5', '그대여~', '/webtoon/thumbNail_episode/66.jpg', 140);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 7, 10, 0, 0, '2010-04-05', '제1화 - 우유_6', '그대여~', '/webtoon/thumbNail_episode/1.jpg', 141);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 7, 10, 0, 0, '2010-04-12', '제2화 - 언덕길_1', '그대여~', '/webtoon/thumbNail_episode/2.jpg', 142);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 7, 10, 0, 0, '2010-04-19', '제2화 - 언덕길_2','그대여~',  '/webtoon/thumbNail_episode/3.jpg', 143);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 7, 10, 0, 0, '2010-04-26', '제2화 - 언덕길_3', '그대여~', '/webtoon/thumbNail_episode/4.jpg', 144);


--G 이미지 넣기 

insert into image(image_index, episode_sequence, file_name) 
values(1, 265, '/webtoon/gag/예고편.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 266, '/webtoon/gag/제1화 - 우유_1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 267, '/webtoon/gag/제1화 - 우유_2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 268, '/webtoon/gag/제1화 - 우유_3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 269, '/webtoon/gag/제1화 - 우유_4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 270, '/webtoon/gag/제1화 - 우유_5.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 271, '/webtoon/gag/제1화 - 우유_6.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 272, '/webtoon/gag/제2화 - 언덕길_1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 273, '/webtoon/gag/제2화 - 언덕길_2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 274, '/webtoon/gag/제2화 - 언덕길_3.jpg');

--select * from category ;


--H 성인(adult) '순정만화'
--select * from user_information;

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (8,'순정 만화','funding','serial','H','green', '혜리', 1, '어렴풋이', '/webtoon/thumbNail_webtoon/4.jpg');


--insert 순정만화 funding 회차;

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,8,6);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,8,7);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,8,8);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,8,9);

insert into fund (fund_code,episode_fund, webtoon_code, episode_number)
values (fund_seq.nextval,3000,8,10);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 1, 0, 0, '2008-02-01', 'no.1 - elevator', '어렴풋이', '/webtoon/thumbNail_episode/5.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 2, 0, 0, '2008-02-08', 'no.2 -necktie', '어렴풋이', '/webtoon/thumbNail_episode/6.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 3, 0, 0, '2008-02-15', 'no.3 - present', '어렴풋이', '/webtoon/thumbNail_episode/7.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 4, 0, 0, '2008-02-22', 'no.4 - emotion','어렴풋이',  '/webtoon/thumbNail_episode/8.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 5, 0, 0, '2008-02-29', 'no.5 - same age','어렴풋이',  '/webtoon/thumbNail_episode/9.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 6, 0, 0, '2008-03-07', 'no.6 - couple', '어렴풋이', '/webtoon/thumbNail_episode/10.jpg', 145);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 7, 0, 0, '2008-03-14', 'no.7 - name', '어렴풋이', '/webtoon/thumbNail_episode/11.jpg', 146);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 8, 0, 0, '2008-03-21', 'no.8 - the first snow', '어렴풋이', '/webtoon/thumbNail_episode/12.jpg', 147);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 9, 0, 0, '2008-03-28', 'no.9 - cold', '어렴풋이', '/webtoon/thumbNail_episode/13.jpg', 148);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 10, 0, 0, '2008-04-04', 'no.10 - two of us','어렴풋이',  '/webtoon/thumbNail_episode/14.jpg', 149);



--8 adult  image 넣기 --

insert into image(image_index, episode_sequence, file_name) 
values(1, 275, '/webtoon/adult/no.1 - elevator.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 276, '/webtoon/adult/no.2 -necktie.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 277, '/webtoon/adult/no.3 - present.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 278, '/webtoon/adult/no.4 - emotion.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 279, '/webtoon/adult/no.5 - same age.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 280, '/webtoon/adult/no.6 - couple.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 281, '/webtoon/adult/no.7 - name.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 282, '/webtoon/adult/no.8 - the first snow.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 283, '/webtoon/adult/no.9 - cold.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 284, '/webtoon/adult/no.10 - two of us.jpg');



-- I 기타 일반작가 수정  작품 '타이밍'
--select * from category;
--elect * from user_information;

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (9,'타이밍','free','complete','I','green', '혜리', 0, '모든 건 타이밍~', '/webtoon/thumbNail_webtoon/5.jpg');

--


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 1, 0, 0, '2008-06-01', '예고편','모든 건 타이밍~',  '/webtoon/thumbNail_episode/15.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 2, 0, 0, '2008-06-08', '제1화 - 순간의 틈_1','모든 건 타이밍~',  '/webtoon/thumbNail_episode/16.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 3, 0, 0, '2008-06-15', '제1화 - 순간의 틈_2','모든 건 타이밍~',  '/webtoon/thumbNail_episode/17.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 4, 0, 0, '2008-06-22', '제1화 - 순간의 틈_3', '모든 건 타이밍~', '/webtoon/thumbNail_episode/18.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 5, 0, 0, '2008-06-29', '제1화 - 순간의 틈_4','모든 건 타이밍~',  '/webtoon/thumbNail_episode/19.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 6, 0, 0, '2008-07-06', '제2화 - 10분_1','모든 건 타이밍~',  '/webtoon/thumbNail_episode/20.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 7, 0, 0, '2008-07-13', '제2화 - 10분_2', '모든 건 타이밍~', '/webtoon/thumbNail_episode/21.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 8, 0, 0, '2008-07-20', '제2화 - 10분_3','모든 건 타이밍~',  '/webtoon/thumbNail_episode/22.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 9, 0, 0, '2008-07-27', '제2화 - 10분_4', '모든 건 타이밍~', '/webtoon/thumbNail_episode/23.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 10, 0, 0, '2008-08-03', '제2화 - 10분_5', '모든 건 타이밍~', '/webtoon/thumbNail_episode/24.jpg', null);


---image 넣기 

insert into image(image_index, episode_sequence, file_name) 
values(1, 285, '/webtoon/etc/예고편.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 286, '/webtoon/etc/제1화 - 순간의 틈_1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 287, '/webtoon/etc/제1화 - 순간의 틈_2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 288, '/webtoon/etc/제1화 - 순간의 틈_3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 289, '/webtoon/etc/제1화 - 순간의 틈_4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 290, '/webtoon/etc/제2화 - 10분_1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 291, '/webtoon/etc/제2화 - 10분_2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 292, '/webtoon/etc/제2화 - 10분_3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 293, '/webtoon/etc/제2화 - 10분_4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 294, '/webtoon/etc/제2화 - 10분_5.jpg');

commit;



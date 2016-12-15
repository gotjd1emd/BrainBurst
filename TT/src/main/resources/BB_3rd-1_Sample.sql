-- drama category  �ݵ��۰� ����  ���� : �ٺ� 

select * from webtoon;
  --1. webtoon ����
insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (4,'�ٺ�','funding','complete','D','green', '����', 1, '�ٺ�-?!', '/webtoon/thumbNail_webtoon/1.jpg');


  -- drama funding ȸ�� 
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
---episode ����

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 1, 0, 0, '2014-01-01', '��1ȭ - ����', '�۰��Ǹ� �ٺ�ٺ�', '/webtoon/thumbNail_episode/30.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 2, 0, 0, '2014-01-08', '��2ȭ - �Ͱ�', '�۰��Ǹ� �ٺ�ٺ�', '/webtoon/thumbNail_episode/31.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 3, 0, 0, '2014-01-15', '��3ȭ - ��', '�۰��Ǹ� �ٺ�ٺ�', '/webtoon/thumbNail_episode/32.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 4, 0, 0, '2014-01-22', '��4ȭ - ī��', '�۰��Ǹ� �ٺ�ٺ�', '/webtoon/thumbNail_episode/33.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 5, 0, 0, '2014-01-29', '��5ȭ - �Ź�', '�۰��Ǹ� �ٺ�ٺ�', '/webtoon/thumbNail_episode/34.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 6, 0, 0, '2014-02-05', '��6ȭ - ģ��', '�۰��Ǹ� �ٺ�ٺ�', '/webtoon/thumbNail_episode/35.jpg', 179);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 7, 0, 0, '2014-02-12', '��7ȭ - �佺Ʈ', '�۰��Ǹ� �ٺ�ٺ�', '/webtoon/thumbNail_episode/36.jpg', 180);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 8, 0, 0, '2014-02-19', '��8ȭ - Ŀ��', '�۰��Ǹ� �ٺ�ٺ�', '/webtoon/thumbNail_episode/37.jpg', 181);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 9, 0, 0, '2014-02-26', '��9ȭ - ����', '�۰��Ǹ� �ٺ�ٺ�', '/webtoon/thumbNail_episode/38.jpg', 182);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 10, 0, 0, '2014-03-05', '��10ȭ - �ü�', '�۰��Ǹ� �ٺ�ٺ�', '/webtoon/thumbNail_episode/39.jpg', 183);


--ȸ���� image  �ֱ� 
select* from image;

insert into image(image_index, episode_sequence, file_name) 
values(1, 235, '/webtoon/fantasy/��1ȭ - ����.jpg_13.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 236, '/webtoon/fantasy/��2ȭ - �Ͱ�.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 237, '/webtoon/fantasy/��3ȭ - ��.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 238, '/webtoon/fantasy/��4ȭ - ī��.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 239, '/webtoon/fantasy/��5ȭ - �Ź�.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 240, '/webtoon/fantasy/��6ȭ - ģ��.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 241, '/webtoon/fantasy/��7ȭ - �佺Ʈ.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 242, '/webtoon/fantasy/��8ȭ - Ŀ��.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 243, '/webtoon/fantasy/��9ȭ - ����.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 244, '/webtoon/fantasy/��10ȭ - �ü�.jpg');

--select * from category;



--E thriller  Category �ֱ� '�Ϲ�' 
--select * from user_information;

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (5,'����� ��� ����','free','serial','D','green', '�츮', 0, '�۰��� �� - ����� ��� ����', '/webtoon/thumbNail_webtoon/2.jpg');



---episode ����


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 1, 0, 0, '2014-01-01', '������', 'all of your moments', '/webtoon/thumbNail_episode/41.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 2, 0, 0, '2014-01-08', '��1ȭ - �׷��簡_01', 'all of your moments', '/webtoon/thumbNail_episode/42.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 3, 0, 0, '2014-01-15', '��1ȭ - �׷��簡_02','all of your moments',  '/webtoon/thumbNail_episode/43.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 4, 0, 0, '2014-01-22', '��1ȭ - �׷��簡_03','all of your moments',  '/webtoon/thumbNail_episode/44.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 5, 0, 0, '2014-01-29', '��1ȭ - �׷��簡_04','all of your moments',  '/webtoon/thumbNail_episode/45.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 6, 0, 0, '2014-02-05', '��1ȭ - �׷��簡_05', 'all of your moments', '/webtoon/thumbNail_episode/46.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 7, 0, 0, '2014-02-12', '��1ȭ - �׷��簡_06', 'all of your moments', '/webtoon/thumbNail_episode/47.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 8, 0, 0, '2014-02-19', '��2ȭ - ���̳� �� �ᰡ_01', 'all of your moments', '/webtoon/thumbNail_episode/48.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 9, 0, 0, '2014-02-26', '��2ȭ - ���̳� �� �ᰡ_02', 'all of your moments', '/webtoon/thumbNail_episode/49.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 10, 0, 0, '2014-03-05', '��2ȭ - ���̳� �� �ᰡ_03','all of your moments',  '/webtoon/thumbNail_episode/50.jpg', null);

--thriller image  
insert into image(image_index, episode_sequence, file_name) 
values(1, 245, '/webtoon/thriller/������.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 246, '/webtoon/thriller/��1ȭ - �׷��簡_01.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 247, '/webtoon/thriller/��1ȭ - �׷��簡_02.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 248, '/webtoon/thriller/��1ȭ - �׷��簡_03.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 249, '/webtoon/thriller/��1ȭ - �׷��簡_04.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 250, '/webtoon/thriller/��1ȭ - �׷��簡_05.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 251, '/webtoon/thriller/��1ȭ - �׷��簡_06.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 252, '/webtoon/thriller/��2ȭ - ���̳� �� �ᰡ_01.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 253, '/webtoon/thriller/��2ȭ - ���̳� �� �ᰡ_02.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 254, '/webtoon/fantasy/��2ȭ - ���̳� �� �ᰡ_03.jpg');

--select * from category;
--select * from user_information;
--F  �ϻ� '�̿����'  �ݵ��۰� : �츮 

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (6,'�̿����','funding','serial','F','green', '����', 1, '�̿����-?!', '/webtoon/thumbNail_webtoon/3.jpg');


--'�̿����' funding 

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
values (episode_seq.NEXTVAL, 6, 1, 0, 0, '2010-03-01', '������.jpg','�̿� ���_?',  '/webtoon/thumbNail_episode/51.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 6, 2, 0, 0, '2010-01-08', '��1ȭ - �Ͱ�_01','�̿� ���_?',  '/webtoon/thumbNail_episode/52.jpg', null);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 6, 3, 0, 0, '2010-01-15', '��1ȭ - �Ͱ�_02','�̿� ���_?',  '/webtoon/thumbNail_episode/53.jpg', null);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 6, 4, 0, 0, '2010-01-22', '��1ȭ - �Ͱ�_03','�̿� ���_?',  '/webtoon/thumbNail_episode/54.jpg', null);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 6, 5, 0, 0, '2010-01-29', '��1ȭ - �Ͱ�_04','�̿� ���_?',  '/webtoon/thumbNail_episode/55.jpg', null);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 6, 6, 0, 0, '2010-02-05', '��1ȭ - �Ͱ�_05','�̿� ���_?',  '/webtoon/thumbNail_episode/56.jpg', 135);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 6, 7, 0, 0, '2010-02-12', '��2ȭ - �մ�_01','�̿� ���_?',  '/webtoon/thumbNail_episode/57.jpg', 136);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 6, 8, 0, 0, '2010-02-19', '��2ȭ - �մ�_02','�̿� ���_?',  '/webtoon/thumbNail_episode/58.jpg', 137);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 6, 9, 0, 0, '2010-02-26', '��2ȭ - �մ�_03','�̿� ���_?',  '/webtoon/thumbNail_episode/59.jpg', 138);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 6, 10, 0, 0, '2010-03-05', '��2ȭ - �մ�_04','�̿� ���_?',  '/webtoon/thumbNail_episode/60.jpg', 139);



---F 'life' �̿� ��� �ֱ� 
insert into image(image_index, episode_sequence, file_name) 
values(1, 255, '/webtoon/life/������.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 256, '/webtoon/life/��1ȭ - �Ͱ�_01.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 257, '/webtoon/life/��1ȭ - �Ͱ�_02.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 258, '/webtoon/life/��1ȭ - �Ͱ�_03.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 259, '/webtoon/life/��1ȭ - �Ͱ�_04.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 260, '/webtoon/life/��1ȭ - �Ͱ�_05.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 261, '/webtoon/life/��2ȭ - �մ�_01.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 262, '/webtoon/life/��2ȭ - �մ�_02.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 263, '/webtoon/life/��2ȭ - �մ�_03.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 264, '/webtoon/life/��2ȭ - �մ�_04.jpg');


--select * FROM  user_information;
------------G ------------------------------------------------
--select * from category;
--G ���� '�״븦 ����մϴ�' �ݵ��۰� 

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (7,'�״븦 ����մϴ�','funding','serial','G','green', '����', 1, '�״� ����մϴ�', '/webtoon/thumbNail_webtoon/6.jpg');


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
values (episode_seq.NEXTVAL, 7, 10, 0, 0, '2010-03-01', '������', '�״뿩~', '/webtoon/thumbNail_episode/61.jpg', null);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 7, 10, 0, 0, '2010-03-08', '��1ȭ - ����_1', '�״뿩~', '/webtoon/thumbNail_episode/62.jpg', null);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 7, 10, 0, 0, '2010-03-15', '��1ȭ - ����_2', '�״뿩~', '/webtoon/thumbNail_episode/63.jpg', null);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 7, 10, 0, 0, '2010-03-22', '��1ȭ - ����_3', '�״뿩~', '/webtoon/thumbNail_episode/64.jpg', null);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 7, 10, 0, 0, '2010-03-22', '��1ȭ - ����_4', '�״뿩~', '/webtoon/thumbNail_episode/65.jpg', null);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 7, 10, 0, 0, '2010-03-29', '��1ȭ - ����_5', '�״뿩~', '/webtoon/thumbNail_episode/66.jpg', 140);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 7, 10, 0, 0, '2010-04-05', '��1ȭ - ����_6', '�״뿩~', '/webtoon/thumbNail_episode/1.jpg', 141);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 7, 10, 0, 0, '2010-04-12', '��2ȭ - �����_1', '�״뿩~', '/webtoon/thumbNail_episode/2.jpg', 142);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 7, 10, 0, 0, '2010-04-19', '��2ȭ - �����_2','�״뿩~',  '/webtoon/thumbNail_episode/3.jpg', 143);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 7, 10, 0, 0, '2010-04-26', '��2ȭ - �����_3', '�״뿩~', '/webtoon/thumbNail_episode/4.jpg', 144);


--G �̹��� �ֱ� 

insert into image(image_index, episode_sequence, file_name) 
values(1, 265, '/webtoon/gag/������.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 266, '/webtoon/gag/��1ȭ - ����_1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 267, '/webtoon/gag/��1ȭ - ����_2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 268, '/webtoon/gag/��1ȭ - ����_3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 269, '/webtoon/gag/��1ȭ - ����_4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 270, '/webtoon/gag/��1ȭ - ����_5.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 271, '/webtoon/gag/��1ȭ - ����_6.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 272, '/webtoon/gag/��2ȭ - �����_1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 273, '/webtoon/gag/��2ȭ - �����_2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 274, '/webtoon/gag/��2ȭ - �����_3.jpg');

--select * from category ;


--H ����(adult) '������ȭ'
--select * from user_information;

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (8,'���� ��ȭ','funding','serial','H','green', '����', 1, '���ǲ��', '/webtoon/thumbNail_webtoon/4.jpg');


--insert ������ȭ funding ȸ��;

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
values (episode_seq.NEXTVAL, 8, 1, 0, 0, '2008-02-01', 'no.1 - elevator', '���ǲ��', '/webtoon/thumbNail_episode/5.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 2, 0, 0, '2008-02-08', 'no.2 -necktie', '���ǲ��', '/webtoon/thumbNail_episode/6.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 3, 0, 0, '2008-02-15', 'no.3 - present', '���ǲ��', '/webtoon/thumbNail_episode/7.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 4, 0, 0, '2008-02-22', 'no.4 - emotion','���ǲ��',  '/webtoon/thumbNail_episode/8.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 5, 0, 0, '2008-02-29', 'no.5 - same age','���ǲ��',  '/webtoon/thumbNail_episode/9.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 6, 0, 0, '2008-03-07', 'no.6 - couple', '���ǲ��', '/webtoon/thumbNail_episode/10.jpg', 145);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 7, 0, 0, '2008-03-14', 'no.7 - name', '���ǲ��', '/webtoon/thumbNail_episode/11.jpg', 146);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 8, 0, 0, '2008-03-21', 'no.8 - the first snow', '���ǲ��', '/webtoon/thumbNail_episode/12.jpg', 147);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 9, 0, 0, '2008-03-28', 'no.9 - cold', '���ǲ��', '/webtoon/thumbNail_episode/13.jpg', 148);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 10, 0, 0, '2008-04-04', 'no.10 - two of us','���ǲ��',  '/webtoon/thumbNail_episode/14.jpg', 149);



--8 adult  image �ֱ� --

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



-- I ��Ÿ �Ϲ��۰� ����  ��ǰ 'Ÿ�̹�'
--select * from category;
--elect * from user_information;

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (9,'Ÿ�̹�','free','complete','I','green', '����', 0, '��� �� Ÿ�̹�~', '/webtoon/thumbNail_webtoon/5.jpg');

--


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 1, 0, 0, '2008-06-01', '������','��� �� Ÿ�̹�~',  '/webtoon/thumbNail_episode/15.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 2, 0, 0, '2008-06-08', '��1ȭ - ������ ƴ_1','��� �� Ÿ�̹�~',  '/webtoon/thumbNail_episode/16.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 3, 0, 0, '2008-06-15', '��1ȭ - ������ ƴ_2','��� �� Ÿ�̹�~',  '/webtoon/thumbNail_episode/17.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 4, 0, 0, '2008-06-22', '��1ȭ - ������ ƴ_3', '��� �� Ÿ�̹�~', '/webtoon/thumbNail_episode/18.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 5, 0, 0, '2008-06-29', '��1ȭ - ������ ƴ_4','��� �� Ÿ�̹�~',  '/webtoon/thumbNail_episode/19.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 6, 0, 0, '2008-07-06', '��2ȭ - 10��_1','��� �� Ÿ�̹�~',  '/webtoon/thumbNail_episode/20.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 7, 0, 0, '2008-07-13', '��2ȭ - 10��_2', '��� �� Ÿ�̹�~', '/webtoon/thumbNail_episode/21.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 8, 0, 0, '2008-07-20', '��2ȭ - 10��_3','��� �� Ÿ�̹�~',  '/webtoon/thumbNail_episode/22.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 9, 0, 0, '2008-07-27', '��2ȭ - 10��_4', '��� �� Ÿ�̹�~', '/webtoon/thumbNail_episode/23.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 10, 0, 0, '2008-08-03', '��2ȭ - 10��_5', '��� �� Ÿ�̹�~', '/webtoon/thumbNail_episode/24.jpg', null);


---image �ֱ� 

insert into image(image_index, episode_sequence, file_name) 
values(1, 285, '/webtoon/etc/������.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 286, '/webtoon/etc/��1ȭ - ������ ƴ_1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 287, '/webtoon/etc/��1ȭ - ������ ƴ_2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 288, '/webtoon/etc/��1ȭ - ������ ƴ_3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 289, '/webtoon/etc/��1ȭ - ������ ƴ_4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 290, '/webtoon/etc/��2ȭ - 10��_1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 291, '/webtoon/etc/��2ȭ - 10��_2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 292, '/webtoon/etc/��2ȭ - 10��_3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 293, '/webtoon/etc/��2ȭ - 10��_4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 294, '/webtoon/etc/��2ȭ - 10��_5.jpg');

commit;



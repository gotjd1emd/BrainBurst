--DB insert user , category, webtoon , image , ��Ȳ�� ���� funding ���� , suscription (���� ���� )

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('admin@naver.com','������','admin','010-8282-8282',11000,'�ݵ��۰�','������','��','000001');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('tiger@hanmail.net','Ÿ�̰�','tiger','01043435454',4000,'����','���ؼ�','��','900929');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('curry@gmail.com','Ŀ��','curry','01044332255',1000,'����','������Ŀ��','��','880314');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('awaynee@hanmail.net','�Ÿӵ�','mammoth','01093441366',1000,'����','������','��','880127');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('kevin@gmail.com','�ɺ�','kevin','01077947798',5000,'����','�ɺ���Ʈ','��','880929');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('leonard@naver.com','���ʵ�','leonard','01077559988',7000,'����','ī���̷��ʵ�','��','880127');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('chris@gmail.com','ũ����','chris','01011223344',1000,'����','ũ������','��','910629');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('lionel@hanmail.net','������','lionel','01033226677',9000,'����','�����ڸ޽�','��','870624');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('eden@naver.com','����','eden','01013314554',2000,'����','������ڸ�','��','910107');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('pedro@hanmail.net','����','pedro','01099556644',4300,'����','����','��','870728');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('dahyeon@gmail.com','����','dahyeon','01088997788',1000,'����','�����','��','980528');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('girlfriend@hanmail.net','����','girfriend','01034112211',3000,'����','������','��','971004');


insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('boyeong@naver.com','����','boyeong','01032114622',13000,'�۰�','�ں���','��','900212');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('seulgie@hanmail.net','����','seulgie','01022668855',122000,'�۰�','�载��','��','911010');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('woori@hanmail.net','�츮','woori','01054447788',46000,'�۰�','��츮','��','880202');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('crystal@hanmail.net','����','crystal','01076451325',432100,'�۰�','������','��','941024');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('aoa@hanmail.net','����','aoa','01023226577',32000,'�۰�','�輳��','��','950103');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('byeongjae@gmail.com','����','byeongjae','01075545553',1000,'�ݵ��۰�','������','��','880506');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('goeun@gmail.com','����','goeun','01053534545',15000,'�ݵ��۰�','�����','��','910702');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('jei@naver.com','����','jei','01012126565',11000,'�ݵ��۰�','����','��','890905');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('hyeri@gmail.com','����','hyeri','01022441312',15000,'�ݵ��۰�','������','��','940609');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('minah@naver.com','�ξ�','minah','01099335577',11000,'�ݵ��۰�','��ξ�','��','930513');

commit;


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


-- webtoon_category_DB �����Ͽ����ϴ�.

-- ���̵�� ������ �ξƸ� ����߽��ϴ�. user Informatio_DB

-- insert  ī�װ� A action webtoon ���� : ����Ʈ -  ********   �Ϲ��۰�    *******
commit;

-- webtoon Ÿ��Ʋ + ���� 
select * from webtoon;

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'����Ʈ','free','serial','A','green', '����', 0, '����Ʈ����..?!', '/webtoon/webtoonThumbnail/19.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period,summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�����','funding','serial','B','green','�ξ�',1,'����Ʈ ����','/webtoon/webtoonThumbnail/20.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'26��','funding','complete','C','green', '����', 1, 'For 26years..?!', '/webtoon/webtoonThumbnail/21.jpg');

--
--------------------------------------------------------------------------------------------------------------------------------------------
----     ******************* Action '����Ʈ' episode �ֱ� // �Ϲ� ��ǰ   C:\webtoon\action/����Ʈ �����ȿ� �̹��� �ٷ� �ֱ�   *****************************
--
--DELETE FROM EPISODE WHERE EPISODE_SEQUENCE = 1
--SELECT * FROM EPISODE;
select * from episode;

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 1, 0, 0, '2016-03-02 ', '������', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/1.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 2, 0, 0, '2016-03-02 ', '��1ȭ - ����Ʈ_1', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/2.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 3, 0, 0, '2016-03-02 ', '��1ȭ - ����Ʈ_2', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/3.jpg', null);
insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 4, 0, 0, '2016-03-02 ', '��1ȭ - ����Ʈ_3', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/4.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 5, 0, 0, '2016-03-02 ', '��1ȭ - ����Ʈ_4', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/5.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 6, 0, 0, '2016-03-02 ', '��1ȭ - ����Ʈ_5', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/6.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 7, 0, 0, '2016-03-02 ', '��2ȭ - �� ������ �ü�_1', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/7.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 8, 0, 0, '2016-03-02 ', '��2ȭ - �� ������ �ü�_2', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/8.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 9, 0, 0, '2016-03-02 ', '��2ȭ - �� ������ �ü�_3', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/9.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 10, 0, 0, '2016-03-02 ', '��2ȭ - �� ������ �ü�_4', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/10.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 11, 0, 0, '2016-03-02 ', '��2ȭ - �� ������ �ü�_5', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/11.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 12, 0, 0, '2016-03-02 ', '��3ȭ - ������ �� �θ��� �ִ�_1', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/12.jpg',null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 13, 0, 0, '2016-03-02 ', '��3ȭ - ������ �� �θ��� �ִ�_2', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/13.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 14, 0, 0, '2016-03-02 ', '��3ȭ - ������ �� �θ��� �ִ�_3', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/14.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 15, 0, 0, '2016-03-02 ', '��3ȭ - ������ �� �θ��� �ִ�_4', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/15.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 16, 0, 0, '2016-03-02 ', '��3ȭ - ������ �� �θ��� �ִ�_5', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/16.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 17, 0, 0, '2016-03-02 ', '��6ȭ - ��������_1', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/17.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 18, 0, 0, '2016-03-02 ', '��6ȭ - ��������_2', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/18.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 19, 0, 0, '2016-03-02 ', '��6ȭ - ��������_3', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/1.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 20, 0, 0, '2016-03-02 ', '��6ȭ - ��������_4', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/2.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 21, 0, 0, '2016-03-02 ', '��6ȭ - ��������_5', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/3.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 22, 0, 0, '2016-03-02 ', '��7ȭ - ���� ����_1', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/4.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 23, 0, 0, '2016-03-02 ', '��7ȭ - ���� ����_2', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/5.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 24, 0, 0, '2016-03-02 ', '��7ȭ - ���� ����_3', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/6.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 25, 0, 0, '2016-03-02 ', '��7ȭ - ���� ����_4', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/7.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 26, 0, 0, '2016-03-02 ', '��7ȭ - ���� ����_5', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/8.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 27, 0, 0, '2016-03-02 ', '��8ȭ - �ͽ�_1', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/9.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 28, 0, 0, '2016-03-02 ', '��8ȭ - �ͽ�_2', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/10.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 29, 0, 0, '2016-03-02 ', '��8ȭ - �ͽ�_3', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/11.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 30, 0, 0, '2016-03-02 ', '��8ȭ - �ͽ�_4', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/12.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 31, 0, 0, '2016-03-02 ', '��8ȭ - �ͽ�_5', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/13.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 32, 0, 0, '2016-03-02 ', '��8ȭ - �ͽ�_6', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/14.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 33, 0, 0, '2016-03-02 ', '��8ȭ - �ͽ�_7', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/15.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 34, 0, 0, '2016-03-02 ', '��8ȭ - �ͽ�_8', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/16.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 35, 0, 0, '2016-03-02 ', '��8ȭ - �ͽ�_9', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/17.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 36, 0, 0, '2016-03-02 ', '��8ȭ - �ͽ�_10', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/18.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 37, 0, 0, '2016-03-02 ', '��8ȭ - �ͽ�_11', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/1.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 38, 0, 0, '2016-03-02 ', '��8ȭ - �ͽ�_12', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/2.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 39, 0, 0, '2016-03-02 ', '��8ȭ - �ͽ�_13', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/3.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 40, 0, 0, '2016-03-02 ', '��8ȭ - �ͽ�_14', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/4.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 41, 0, 0, '2016-03-02 ', '��8ȭ - �ͽ�_15', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/5.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 42, 0, 0, '2016-03-02 ', '��8ȭ - �ͽ�_16', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/6.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 43, 0, 0, '2016-03-02 ', '��8ȭ - �ͽ�_17', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/7.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 44, 0, 0, '2016-03-02 ', '��8ȭ - �ͽ�_18', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/8.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 45, 0, 0, '2016-03-02 ', '��8ȭ - �ͽ�_19', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/9.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 46, 0, 0, '2016-03-02 ', '��8ȭ - �ͽ�_20', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/10.jpg', null);



--ȸ�� �� image '����Ʈ' �ֱ� \webtoon\action

insert into image(image_index, episode_sequence, file_name) 
values(1, 1, '/webtoon/action/������.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 2, '/webtoon/action/��1ȭ - ����Ʈ_1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 3, '/webtoon/action/��1ȭ - ����Ʈ_2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 4, '/webtoon/action/��1ȭ - ����Ʈ_3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 5, '/webtoon/action/��1ȭ - ����Ʈ_4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 6, '/webtoon/action/��1ȭ - ����Ʈ_5.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 7, '/webtoon/action/��2ȭ - �� ������ �ü�_1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 8, '/webtoon/action/��2ȭ - �� ������ �ü�_2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 9, '/webtoon/action/��2ȭ - �� ������ �ü�_3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 10, '/webtoon/action/��2ȭ - �� ������ �ü�_4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 11, '/webtoon/action/��2ȭ - �� ������ �ü�_5.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 12, '/webtoon/action/��3ȭ - ������ �� �θ��� �ִ�_1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 13, '/webtoon/action/��3ȭ - ������ �� �θ��� �ִ�_2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 14, '/webtoon/action/��3ȭ - ������ �� �θ��� �ִ�_3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 15, '/webtoon/action/��3ȭ - ������ �� �θ��� �ִ�_4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 16, '/webtoon/action/��3ȭ - ������ �� �θ��� �ִ�_5.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 17, '/webtoon/action/��6ȭ - ��������_1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 18, '/webtoon/action/��6ȭ - ��������_2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 19, '/webtoon/action/��6ȭ - ��������_3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 20, '/webtoon/action/��6ȭ - ��������_4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 21, '/webtoon/action/��6ȭ - ��������_5.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 22, '/webtoon/action/��7ȭ - ���� ����_1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 23, '/webtoon/action/��7ȭ - ���� ����_2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 24, '/webtoon/action/��7ȭ - ���� ����_3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 25, '/webtoon/action/��7ȭ - ���� ����_4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 26, '/webtoon/action/��7ȭ - ���� ����_5.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 27, '/webtoon/action��8ȭ - �ͽ�_1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 28, '/webtoon/action/��8ȭ - �ͽ�_2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 29, '/webtoon/action/��8ȭ - �ͽ�_3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 30, '/webtoon/action/��8ȭ - �ͽ�_4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 31, '/webtoon/action/��8ȭ - �ͽ�_5.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 32, '/webtoon/action/��8ȭ - �ͽ�_6.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 33, '/webtoon/action/��8ȭ - �ͽ�_7.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 34, '/webtoon/action/��8ȭ - �ͽ�_8.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 35, '/webtoon/action/��8ȭ - �ͽ�_9.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 36, '/webtoon/action/��8ȭ - �ͽ�_10.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 37, '/webtoon/action/��8ȭ - �ͽ�_11.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 38, '/webtoon/action/��8ȭ - �ͽ�_12.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 39, '/webtoon/action/��8ȭ - �ͽ�_13.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 40, '/webtoon/action/��8ȭ - �ͽ�_14.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 41, '/webtoon/action/��8ȭ - �ͽ�_15.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 42, '/webtoon/action/��8ȭ - �ͽ�_16.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 43, '/webtoon/action/��8ȭ - �ͽ�_17.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 44, '/webtoon/action/��8ȭ - �ͽ�_18.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 45, '/webtoon/action/��8ȭ - �ͽ�_19.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 46, '/webtoon/action/��8ȭ - �ͽ�_20.jpg');


--select * from episode;
commit;




---***********�ݵ����� �����  6ȸ ~ ȸ���� �ݵ� ��� 


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



--select * from fund;


--------------------------------------** fund webtoon-----------------------------------------------------------------------------------------------------------------
insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 1, 0, 0, '2011-01-01', '������', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/1.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 2, 0, 0, '2011-01-08', '��1ȭ - 1�� ����� 1ȭ_01', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/2.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 3, 0, 0, '2011-01-15', '��1ȭ - 1�� ����� 1ȭ_02', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/3.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 4, 0, 0, '2011-01-22', '��1ȭ - 1�� ����� 1ȭ_03', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/4.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 5, 0, 0, '2011-01-29', '��1ȭ - 1�� ����� 1ȭ_04', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/5.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 6, 0, 0, '2011-02-05', '��1ȭ - 1�� ����� 1ȭ_05', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/6.jpg', 1);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 7, 0, 0, '2011-02-12', '��1ȭ - 1�� ����� 1ȭ_06', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/7.jpg', 2);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 8, 0, 0, '2011-02-19', '��1ȭ - 1�� ����� 1ȭ_07', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/8.jpg', 3);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 9, 0, 0, '2011-02-26', '��1ȭ - 1�� ����� 1ȭ_08', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/9.jpg', 4);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 10, 0, 0, '2011-03-04', '��1ȭ - 1�� ����� 1ȭ_09', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/10.jpg', 5);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 11, 0, 0, '2011-03-11', '��1ȭ - 1�� ����� 1ȭ_10', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/11.jpg', 6);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 12, 0, 0, '2011-03-18', '��2ȭ - 1�� ����� 2ȭ_01', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/12.jpg', 7);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 13, 0, 0, '2011-03-25', '��2ȭ - 1�� ����� 2ȭ_02', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/13.jpg', 8);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 14, 0, 0, '2011-04-01', '��2ȭ - 1�� ����� 2ȭ_03', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/14.jpg', 9);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 15, 0, 0, '2011-04-08', '��2ȭ - 1�� ����� 2ȭ_04', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/15.jpg', 10);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 16, 0, 0, '2011-04-15', '��2ȭ - 1�� ����� 2ȭ_06', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/16.jpg', 11);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 17, 0, 0, '2011-04-22', '��2ȭ - 1�� ����� 2ȭ_07', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/17.jpg', 12);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 18, 0, 0, '2011-04-29', '��2ȭ - 1�� ����� 2ȭ_08', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/18.jpg', 13);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 19, 0, 0, '2011-05-06', '��2ȭ - 1�� ����� 2ȭ_09', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/19.jpg', 14);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 20, 0, 0, '2011-05-13', '��2ȭ - 1�� ����� 2ȭ_10', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/20.jpg', 15);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 21, 0, 0, '2011-05-20', '��2ȭ - 1�� ����� 2ȭ_11', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/21.jpg', 16);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 22, 0, 0, '2011-05-27', '��2ȭ - 1�� ����� 2ȭ_12', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/22.jpg', 17);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 23, 0, 0, '2011-06-03', '��2ȭ - 1�� ����� 2ȭ_13', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/23.jpg', 18);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 24, 0, 0, '2011-06-10', '��2ȭ - 1�� ����� 2ȭ_14', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/24.jpg', 19);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 25, 0, 0, '2011-06-17', '��2ȭ - 1�� ����� 2ȭ_15', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/25.jpg', 20);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 26, 0, 0, '2011-06-23', '��2ȭ - 1�� ����� 2ȭ_16', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/26.jpg', 21);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 27, 0, 0, '2011-06-30', '��2ȭ - 1�� ����� 2ȭ_17', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/27.jpg', 22);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 28, 0, 0, '2011-07-07', '��2ȭ - 1�� ����� 2ȭ_18', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/28.jpg', 23);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 29, 0, 0, '2011-07-09', '��3ȭ - 1�� ����� 3ȭ_01', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/29.jpg', 24);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 30, 0, 0, '2011-07-16', '��3ȭ - 1�� ����� 3ȭ_02', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/30.jpg', 25);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 31, 0, 0, '2011-07-23', '��3ȭ - 1�� ����� 3ȭ_03', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/31.jpg', 26);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 32, 0, 0, '2011-07-30', '��3ȭ - 1�� ����� 3ȭ_04', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/32.jpg', 27);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 33, 0, 0, '2011-08-05', '��3ȭ - 1�� ����� 3ȭ_05', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/33.jpg', 28);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 34, 0, 0, '2011-08-12', '��3ȭ - 1�� ����� 3ȭ_06', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/34.jpg', 29);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 35, 0, 0, '2011-08-19', '��3ȭ - 1�� ����� 3ȭ_07', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/35.jpg', 30);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 36, 0, 0, '2011-08-26', '��3ȭ - 1�� ����� 3ȭ_08', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/36.jpg', 31);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 37, 0, 0, '2011-09-02', '��3ȭ - 1�� ����� 3ȭ_09', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/37.jpg', 32);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 38, 0, 0, '2011-09-09', '��3ȭ - 1�� ����� 3ȭ_10', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/38.jpg', 33);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 39, 0, 0, '2011-09-16', '��4ȭ - 1�� ����� 4ȭ_01', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/39.jpg', 34);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 40, 0, 0, '2011-09-22', '��4ȭ - 1�� ����� 4ȭ_02', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/40.jpg', 35);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 41, 0, 0, '2011-09-29', '��4ȭ - 1�� ����� 4ȭ_03', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/41.jpg', 36);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 42, 0, 0, '2011-10-06', '��4ȭ - 1�� ����� 4ȭ_04', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/42.jpg', 37);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 43, 0, 0, '2011-10-13', '��4ȭ - 1�� ����� 4ȭ_05', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/43.jpg', 38);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 44, 0, 0, '2011-10-20', '��4ȭ - 1�� ����� 4ȭ_06', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/44.jpg', 39);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 45, 0, 0, '2011-10-27', '��4ȭ - 1�� ����� 4ȭ_07', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/45.jpg', 40);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 46, 0, 0, '2011-11-03', '��4ȭ - 1�� ����� 4ȭ_08', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/46.jpg', 41);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 47, 0, 0, '2011-11-10', '��4ȭ - 1�� ����� 4ȭ_09', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/47.jpg', 42);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 48, 0, 0, '2011-11-17', '��4ȭ - 1�� ����� 4ȭ_10', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/48.jpg', 43);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 49, 0, 0, '2011-11-24', '��5ȭ - 1�� ����� 5ȭ_1', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/49.jpg', 44);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 50, 0, 0, '2011-12-02', '��5ȭ - 1�� ����� 5ȭ_2', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/50.jpg', 45);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 51, 0, 0, '2011-12-09', '��5ȭ - 1�� ����� 5ȭ_3', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/51.jpg', 46);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 52, 0, 0, '2011-12-16', '��5ȭ - 1�� ����� 5ȭ_4', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/52.jpg', 47);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 53, 0, 0, '2011-12-23', '��5ȭ - 1�� ����� 5ȭ_5', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/53.jpg', 48);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 54, 0, 0, '2011-12-30', '��5ȭ - 1�� ����� 5ȭ_6', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/54.jpg', 49);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 55, 0, 0, '2012-01-06 ', '��5ȭ - 1�� ����� 5ȭ_7', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/55.jpg', 50);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 56, 0, 0, '2012-01-13', '��5ȭ - 1�� ����� 5ȭ_8', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/56.jpg', 51);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 57, 0, 0, '2012-01-20', '��5ȭ - 1�� ����� 5ȭ_9', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/57.jpg', 52);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 58, 0, 0, '2012-01-27', '��5ȭ - 1�� ����� 5ȭ_10', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/58.jpg', 53);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 59, 0, 0, '2012-02-03', '��5ȭ - 1�� ����� 5ȭ_11', '�۰��Ǹ� ���������Ϳ���?', '/webtoon/episodeThumbnail/59.jpg', 54);

--select * from episode where webtoon_code=2 order by episode_sequence;

--------------------- c:/webtoon/sf/����� �̹��� ��� ��  ������ ���� 59��   -----------------------------------------------------------------------------
--delete From image;

insert into image(image_index, episode_sequence, file_name) 
values(1, 47, '/webtoon/sf/������.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 48, '/webtoon/sf/��1ȭ - 1�� ����� 1ȭ_01.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 49, '/webtoon/sf/��1ȭ - 1�� ����� 1ȭ_02.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 50, '/webtoon/sf/��1ȭ - 1�� ����� 1ȭ_03.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 51, '/webtoon/sf/��1ȭ - 1�� ����� 1ȭ_04.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 52, '/webtoon/sf/��1ȭ - 1�� ����� 1ȭ_05.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 53, '/webtoon/sf/��1ȭ - 1�� ����� 1ȭ_06.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 54, '/webtoon/sf/��1ȭ - 1�� ����� 1ȭ_07.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 55, '/webtoon/sf/��1ȭ - 1�� ����� 1ȭ_08.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 56, '/webtoon/sf/��1ȭ - 1�� ����� 1ȭ_09.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 57, '/webtoon/sf/��1ȭ - 1�� ����� 1ȭ_10.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 58, '/webtoon/sf/��2ȭ - 1�� ����� 2ȭ_01.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 59, '/webtoon/sf/��2ȭ - 1�� ����� 2ȭ_02.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 60, '/webtoon/sf/��2ȭ - 1�� ����� 2ȭ_03.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 61, '/webtoon/sf/��2ȭ - 1�� ����� 2ȭ_04.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 62, '/webtoon/sf/��2ȭ - 1�� ����� 2ȭ_05.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 63, '/webtoon/sf/��2ȭ - 1�� ����� 2ȭ_06.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 64, '/webtoon/sf/��2ȭ - 1�� ����� 2ȭ_07.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 65, '/webtoon/sf/��2ȭ - 1�� ����� 2ȭ_08.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 66, '/webtoon/sf/��2ȭ - 1�� ����� 2ȭ_09.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 67, '/webtoon/sf/��2ȭ - 1�� ����� 2ȭ_10.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 68, '/webtoon/sf/��2ȭ - 1�� ����� 2ȭ_11.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 69, '/webtoon/sf/��2ȭ - 1�� ����� 2ȭ_12.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 70, '/webtoon/sf/��2ȭ - 1�� ����� 2ȭ_13.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 71, '/webtoon/sf/��2ȭ - 1�� ����� 2ȭ_14.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 72, '/webtoon/sf/��2ȭ - 1�� ����� 2ȭ_15.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 73, '/webtoon/sf/��2ȭ - 1�� ����� 2ȭ_16.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 74, '/webtoon/sf/��2ȭ - 1�� ����� 2ȭ_17.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 75, '/webtoon/sf/��2ȭ - 1�� ����� 2ȭ_18.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 76, '/webtoon/sf/��3ȭ - 1�� ����� 3ȭ_01.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 77, '/webtoon/sf/��3ȭ - 1�� ����� 3ȭ_02.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 78, '/webtoon/sf/��3ȭ - 1�� ����� 3ȭ_03.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 79, '/webtoon/sf/��3ȭ - 1�� ����� 3ȭ_04.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 80, '/webtoon/sf/��3ȭ - 1�� ����� 3ȭ_05.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 81, '/webtoon/sf/��3ȭ - 1�� ����� 3ȭ_06.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 82, '/webtoon/sf/��3ȭ - 1�� ����� 3ȭ_07.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 83, '/webtoon/sf/��3ȭ - 1�� ����� 3ȭ_08.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 84, '/webtoon/sf/��3ȭ - 1�� ����� 3ȭ_09.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 85, '/webtoon/sf/��3ȭ - 1�� ����� 3ȭ_10.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 86, '/webtoon/sf/��4ȭ - 1�� ����� 4ȭ_01.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 87, '/webtoon/sf/��4ȭ - 1�� ����� 4ȭ_02.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 88, '/webtoon/sf/��4ȭ - 1�� ����� 4ȭ_03.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 89, '/webtoon/sf/��4ȭ - 1�� ����� 4ȭ_04.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 90, '/webtoon/sf/��4ȭ - 1�� ����� 4ȭ_05.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 91, '/webtoon/sf/��4ȭ - 1�� ����� 4ȭ_06.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 92, '/webtoon/sf/��4ȭ - 1�� ����� 4ȭ_07.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 93, '/webtoon/sf/��4ȭ - 1�� ����� 4ȭ_08.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 94, '/webtoon/sf/��4ȭ - 1�� ����� 4ȭ_09.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 95, '/webtoon/sf/��5ȭ - 1�� ����� 5ȭ_01.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 96, '/webtoon/sf/��5ȭ - 1�� ����� 5ȭ_02.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 97, '/webtoon/sf/��5ȭ - 1�� ����� 5ȭ_03.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 98, '/webtoon/sf/��5ȭ - 1�� ����� 5ȭ_04.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 99, '/webtoon/sf/��5ȭ - 1�� ����� 5ȭ_05.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 100, '/webtoon/sf/��5ȭ - 1�� ����� 5ȭ_06.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 101, '/webtoon/sf/��5ȭ - 1�� ����� 5ȭ_07.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 102, '/webtoon/sf/��5ȭ - 1�� ����� 5ȭ_08.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 103, '/webtoon/sf/��5ȭ - 1�� ����� 5ȭ_09.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 104, '/webtoon/sf/��5ȭ - 1�� ����� 5ȭ_10.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 105, '/webtoon/sf/��5ȭ - 1�� ����� 5ȭ_11.jpg');

--select * from episode;
--select * from image;
--commit;



-- fantasy insert �ϱ�

-- webtoon Ÿ��Ʋ + ���� 

--insert into webtoon
--(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, episodeWebtoonl)
--values (3,'26��','funding','complete','C','green', '����', 7, 'For 26years..?!', /webtoon/webtoonThumbnail/21.jpg);


---------���� 26���� �ݵ� ------------------------------

--select * from fund order by fund_code;


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

--select * from fund;
--------------------------------------------------------------------------------------------
--select * from episode;

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 1, 0, 0, '2009-01-01', '������', '��Ʈ��', '/webtoon/episodeThumbnail/10.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 2, 0, 0, '2009-01-08', '26���� �̾߱��Ѵ�-1', '26���̾�', '/webtoon/episodeThumbnail/11.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 3, 0, 0, '2009-01-15', '26���� �̾߱��Ѵ�-2', '26���̾�', '/webtoon/episodeThumbnail/12.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 4, 0, 0, '2009-01-22', '26���� �̾߱��Ѵ�-3', '26���̾�', '/webtoon/episodeThumbnail/13.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 5, 0, 0, '2009-01-29', '��1ȭ �� ������ ����϶�-1', '26���̾�', '/webtoon/episodeThumbnail/14.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 6, 0, 0, '2009-02-05', '��1ȭ �� ������ ����϶�-2', '26���̾�', '/webtoon/episodeThumbnail/15.jpg', 55);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 7, 0, 0, '2009-02-12', '��2ȭ �������� �ʴ� ����-1', '26���̾�', '/webtoon/episodeThumbnail/16.jpg', 56);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 8, 0, 0, '2009-02-19', '��2ȭ �������� �ʴ� ����-2', '26���̾�', '/webtoon/episodeThumbnail/17.jpg', 57);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 9, 0, 0, '2009-02-26', '��2ȭ �������� �ʴ� ����-3', '26���̾�', '/webtoon/episodeThumbnail/18.jpg', 58);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 10, 0, 0, '2009-03-05', '��2ȭ �������� �ʴ� ����-4', '�۰��Ǹ� 26���̾�', '/webtoon/episodeThumbnail/19.jpg', 59);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 11, 0, 0, '2009-03-12', '��3ȭ ��ó�� ���� ���͸� �����-1', '26���̾�', '/webtoon/episodeThumbnail/10.jpg', 60);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 12, 0, 0, '2009-03-19', '��3ȭ ��ó�� ���� ���͸� �����-2', '26���̾�', '/webtoon/episodeThumbnail/1.jpg', 61);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 13, 0, 0, '2009-03-26', '��3ȭ ��ó�� ���� ���͸� �����-3', '26���̾�', '/webtoon/episodeThumbnail/2.jpg', 62);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 14, 0, 0, '2009-04-02', '��3ȭ ��ó�� ���� ���͸� �����-4', '26���̾�', '/webtoon/episodeThumbnail/3.jpg', 63);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 15, 0, 0, '2009-04-09', '��4ȭ �Ͼ�� �����-1', '26���̾�', '/webtoon/episodeThumbnail/4.jpg', 64);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 16, 0, 0, '2009-04-16', '��4ȭ �Ͼ�� �����-2', '26���̾�', '/webtoon/episodeThumbnail/5.jpg', 65);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 17, 0, 0, '2009-04-23', '��4ȭ �Ͼ�� �����-3', '26���̾�', '/webtoon/episodeThumbnail/6.jpg', 66);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 18, 0, 0, '2009-04-30', '��4ȭ �Ͼ�� �����-4', '26���̾�', '/webtoon/episodeThumbnail/7.jpg', 67);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 19, 0, 0, '2009-05-07', '��5ȭ �� ���� ����-1', '26���̾�', '/webtoon/episodeThumbnail/8.jpg', 68);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 20, 0, 0, '2009-05-14', '��5ȭ �� ���� ����-2', '26���̾�', '/webtoon/episodeThumbnail/9.jpg', 69);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 21, 0, 0, '2009-05-21', '��5ȭ �� ���� ����-3', '26���̾�', '/webtoon/episodeThumbnail/10.jpg', 70);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 22, 0, 0, '2009-05-28', '��6ȭ ���� ����� �� �������-1', '26���̾�', '/webtoon/episodeThumbnail/11.jpg', 71);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 23, 0, 0, '2009-06-04', '��6ȭ ���� ����� �� �������-2', '26���̾�', '/webtoon/episodeThumbnail/12.jpg', 72);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 24, 0, 0, '2009-06-11', '��6ȭ ���� ����� �� �������-3', '26���̾�?', '/webtoon/episodeThumbnail/13.jpg', 73);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 25, 0, 0, '2009-06-18', '��6ȭ ���� ����� �� �������-4', '26���̾�', '/webtoon/episodeThumbnail/14.jpg', 74);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 26, 0, 0, '2009-06-25', '��7ȭ �ô뿡 �۾��� �����-1', '26���̾�', '/webtoon/episodeThumbnail/15.jpg', 75);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 27, 0, 0, '2009-07-02', '��7ȭ �ô뿡 �۾��� �����-2', '26���̾�', '/webtoon/episodeThumbnail/16.jpg', 76);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 28, 0, 0, '2009-07-09', '��7ȭ �ô뿡 �۾��� �����-3', '26���̾�', '/webtoon/episodeThumbnail/17.jpg', 77);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 29, 0, 0, '2009-07-16', '��7ȭ �ô뿡 �۾��� �����-4', '26���̾�', '/webtoon/episodeThumbnail/18.jpg', 78);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 30, 0, 0, '2009-07-23', '��7ȭ �ô뿡 �۾��� �����-5', '26���̾�', '/webtoon/episodeThumbnail/19.jpg', 79);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 31, 0, 0, '2009-07-30', '��7ȭ �ô뿡 �۾��� �����-6', '26���̾�', '/webtoon/episodeThumbnail/20.jpg', 80);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 32, 0, 0, '2009-08-06', '��9ȭ ����� ����� �����-1', '26���̾�', '/webtoon/episodeThumbnail/21.jpg', 81);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 33, 0, 0, '2009-08-13', '��9ȭ ����� ����� �����-2', '26���̾�', '/webtoon/episodeThumbnail/22.jpg', 82);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 34, 0, 0, '2009-08-20', '��9ȭ ����� ����� �����-3', '26���̾�', '/webtoon/episodeThumbnail/23.jpg', 83);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 35, 0, 0, '2009-08-27', '��10ȭ ������ ���� Į�� ������-1', '26���̾�', '/webtoon/episodeThumbnail/24.jpg', 84);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 36, 0, 0, '2009-09-03', '��10ȭ ������ ���� Į�� ������-2', '26���̾�', '/webtoon/episodeThumbnail/25.jpg', 85);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 37, 0, 0, '2009-09-10', '��10ȭ������ ���� Į�� ������-3', '26���̾�', '/webtoon/episodeThumbnail/26.jpg', 86);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 38, 0, 0, '2009-09-17', '��10ȭ ������ ���� Į�� ������-4', '26���̾�', '/webtoon/episodeThumbnail/27.jpg', 87);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 39, 0, 0, '2009-09-23', '��11ȭ ����-1', '26���̾�', '/webtoon/episodeThumbnail/1.jpg', 88);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 40, 0, 0, '2009-09-30', '��11ȭ ����-2', '26���̾�', '/webtoon/episodeThumbnail/2.jpg', 89);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 41, 0, 0, '2009-10-07', '��11ȭ ����-3', '26���̾�', '/webtoon/episodeThumbnail/3.jpg', 90);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 42, 0, 0, '2009-10-15', '��11ȭ ����-4', '26���̾�', '/webtoon/episodeThumbnail/4.jpg', 91);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 43, 0, 0, '2009-10-22', '��11ȭ ����-5', '26���̾�', '/webtoon/episodeThumbnail/5.jpg', 92);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 44, 0, 0, '2009-10-29', '��12ȭ ������� �ü�-1', '26���̾�', '/webtoon/episodeThumbnail/6.jpg', 93);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 45, 0, 0, '2009-11-05', '��12ȭ ������� �ü�-2', '26���̾�', '/webtoon/episodeThumbnail/7.jpg', 94);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 46, 0, 0, '2009-11-12', '��12ȭ ������� �ü�-3', '26���̾�', '/webtoon/episodeThumbnail/8.jpg', 95);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 47, 0, 0, '2009-11-19', '��12ȭ ������� �ü�-4', '26���̾�', '/webtoon/episodeThumbnail/9.jpg', 96);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 48, 0, 0, '2009-11-26', '��13ȭ �ۿ�� ���ۿ�-1', '26���̾�', '/webtoon/episodeThumbnail/10.jpg', 97);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 49, 0, 0, '2009-12-03', '��13ȭ �ۿ�� ���ۿ�-2', '26���̾�', '/webtoon/episodeThumbnail/11.jpg', 98);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 50, 0, 0, '2009-12-10', '��13ȭ �ۿ�� ���ۿ�-3', '26���̾�', '/webtoon/episodeThumbnail/12.jpg', 99);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 51, 0, 0, '2009-12-17', '��14ȭ �޺� ������� �Ÿ�-1', '26���̾�', '/webtoon/episodeThumbnail/13.jpg', 100);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 52, 0, 0, '2009-12-23', '��14ȭ �޺� ������� �Ÿ�-2', '26���̾�', '/webtoon/episodeThumbnail/14.jpg', 101);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 53, 0, 0, '2009-12-30', '��14ȭ �޺� ������� �Ÿ�-3', '26���̾�', '/webtoon/episodeThumbnail/15.jpg', 102);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 54, 0, 0, '2010-01-06', '��14ȭ �޺� ������� �Ÿ�-4', '26���̾�', '/webtoon/episodeThumbnail/16.jpg', 103);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 55, 0, 0, '2010-01-13', '��15ȭ �ǵ��ƿ��� ����-1', '26���̾�', '/webtoon/episodeThumbnail/17.jpg', 104);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 56, 0, 0, '2010-01-20', '��15ȭ �ǵ��ƿ��� ����-2', '26���̾�', '/webtoon/episodeThumbnail/18.jpg', 105);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 57, 0, 0, '2010-01-27', '��15ȭ �ǵ��ƿ��� ����-3', '26���̾�', '/webtoon/episodeThumbnail/19.jpg', 106);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 58, 0, 0, '2010-02-03', '��15ȭ �ǵ��ƿ��� ����-4', '26���̾�', '/webtoon/episodeThumbnail/20.jpg', 107);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 59, 0, 0, '2010-02-10', '��16ȭ �� �ٸ� ��ȹ-1', '26���̾�', '/webtoon/episodeThumbnail/21.jpg', 108);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 60, 0, 0, '2010-02-17', '��16ȭ �� �ٸ� ��ȹ-2', '26���̾�', '/webtoon/episodeThumbnail/22.jpg', 109);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 61, 0, 0, '2010-02-24', '��16ȭ �� �ٸ� ��ȹ-3', '26���̾�', '/webtoon/episodeThumbnail/23.jpg', 110);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 62, 0, 0, '2010-03-03', '��16ȭ �� �ٸ� ��ȹ-4', '26���̾�', '/webtoon/episodeThumbnail/24.jpg', 111);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 63, 0, 0, '2010-03-10', '��16ȭ �� �ٸ� ��ȹ-5', '26���̾�', '/webtoon/episodeThumbnail/25.jpg', 112);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 64, 0, 0, '2010-03-17', '��17ȭ ���ɰ� �Ұ���-1', '26���̾�', '/webtoon/episodeThumbnail/26.jpg', 113);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 65, 0, 0, '2010-03-24', '��17ȭ ���ɰ� �Ұ���-2', '26���̾�', '/webtoon/episodeThumbnail/27.jpg', 114);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 66, 0, 0, '2010-03-31', '��17ȭ ���ɰ� �Ұ���-3', '26���̾�', '/webtoon/episodeThumbnail/28.jpg', 115);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 67, 0, 0, '2010-04-07', '��18ȭ ���� ��ȣ��-1', '26���̾�', '/webtoon/episodeThumbnail/29.jpg', 116);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 68, 0, 0, '2010-04-14', '��18ȭ ���� ��ȣ��-2', '26���̾�', '/webtoon/episodeThumbnail/30.jpg', 117);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 69, 0, 0, '2010-04-21', '��18ȭ ���� ��ȣ��-3', '26���̾�', '/webtoon/episodeThumbnail/31.jpg', 118);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 70, 0, 0, '2010-04-28', '��18ȭ ���� ��ȣ��-4', '26���̾�', '/webtoon/episodeThumbnail/32.jpg', 119);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 71, 0, 0, '2010-05-05', '��18ȭ ���� ��ȣ��-5', '26���̾�', '/webtoon/episodeThumbnail/33.jpg', 120);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 72, 0, 0, '2010-05-12', '��19ȭ �ô�� ������ ������-1', '26���̾�', '/webtoon/episodeThumbnail/34.jpg', 121);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 73, 0, 0, '2010-05-19', '��19ȭ �ô�� ������ ������-2', '26���̾�', '/webtoon/episodeThumbnail/35.jpg', 122);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 74, 0, 0, '2010-05-26', '��19ȭ �ô�� ������ ������-3', '26���̾�', '/webtoon/episodeThumbnail/36.jpg', 123);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 75, 0, 0, '2010-06-03', '��19ȭ �ô�� ������ ������-4', '26���̾�', '/webtoon/episodeThumbnail/37.jpg', 124);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 76, 0, 0, '2010-06-10', '��19ȭ �ô�� ������ ������-5', '26���̾�', '/webtoon/episodeThumbnail/38.jpg', 125);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 77, 0, 0, '2010-06-17', '��20ȭ �׷����� �ٽ� �Ͼ-1', '26���̾�', '/webtoon/episodeThumbnail/39.jpg', 126);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 78, 0, 0, '2010-06-24', '��20ȭ �׷����� �ٽ� �Ͼ-2', '26���̾�', '/webtoon/episodeThumbnail/40.jpg', 127);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 79, 0, 0, '2010-07-31', '��20ȭ �׷����� �ٽ� �Ͼ-3', '26���̾�', '/webtoon/episodeThumbnail/41.jpg', 128);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 80, 0, 0, '2010-08-07', '��20ȭ �׷����� �ٽ� �Ͼ-4', '26���̾�', '/webtoon/episodeThumbnail/42.jpg', 129);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 81, 0, 0, '2010-08-15', '��20ȭ �׷����� �ٽ� �Ͼ-5', '26���̾�', '/webtoon/episodeThumbnail/43.jpg', 130);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 82, 0, 0, '2010-08-22', '��21ȭ �� ���� �ü�-1', '26���̾�', '/webtoon/episodeThumbnail/44.jpg', 131);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 83, 0, 0, '2010-08-29', '��21ȭ �� ���� �ü�-2', '26���̾�', '/webtoon/episodeThumbnail/45.jpg', 132);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 84, 0, 0, '2010-09-05', '��21ȭ �� ���� �ü�-3', '26���̾�', '/webtoon/episodeThumbnail/46.jpg', 133);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 85, 0, 0, '2010-09-12', '��21ȭ �� ���� �ü�-4', '26���̾�', '/webtoon/episodeThumbnail/47.jpg', 134);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 86, 0, 0, '2010-09-19', '��22ȭ �ʰ� ���� ��-1', '26���̾�', '/webtoon/episodeThumbnail/48.jpg', 135);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 87, 0, 0, '2010-09-26', '��22ȭ �ʰ� ���� ��-2', '26���̾�', '/webtoon/episodeThumbnail/49.jpg', 136);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 88, 0, 0, '2010-10-03', '��22ȭ �ʰ� ���� ��-3', '26���̾�', '/webtoon/episodeThumbnail/50.jpg', 137);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 89, 0, 0, '2010-10-10', '��22ȭ �ʰ� ���� ��-4', '26���̾�', '/webtoon/episodeThumbnail/51.jpg', 138);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 90, 0, 0, '2010-10-17', '��22ȭ �ʰ� ���� ��-5', '26���̾�', '/webtoon/episodeThumbnail/52.jpg', 139);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 91, 0, 0, '2010-10-24', '��23ȭ ���� ���� ����-1', '26���̾�', '/webtoon/episodeThumbnail/53.jpg', 140);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 92, 0, 0, '2010-10-31', '��23ȭ ���� ���� ����-2', '26���̾�', '/webtoon/episodeThumbnail/54.jpg', 141);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 93, 0, 0, '2010-11-07', '��23ȭ ���� ���� ����-3', '26���̾�', '/webtoon/episodeThumbnail/55.jpg', 142);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 94, 0, 0, '2010-11-14', '��24ȭ ������ ��� �����-1', '26���̾�', '/webtoon/episodeThumbnail/56.jpg', 143);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 95, 0, 0, '2010-11-21', '��24ȭ ������ ��� �����-2', '26���̾�', '/webtoon/episodeThumbnail/57.jpg', 144);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 96, 0, 0, '2010-11-28', '��25ȭ �״� �׳��� ����ϴ°�-1', '26���̾�', '/webtoon/episodeThumbnail/58.jpg', 145);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 97, 0, 0, '2010-12-05', '��25ȭ �״� �׳��� ����ϴ°�-2', '26���̾�', '/webtoon/episodeThumbnail/59.jpg', 146);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 98, 0, 0, '2010-12-12', '��25ȭ �״� �׳��� ����ϴ°�-3', '26���̾�', '/webtoon/episodeThumbnail/60.jpg', 147);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 99, 0, 0, '2010-12-19', '��25ȭ �״� �׳��� ����ϴ°�-4', '26���̾�', '/webtoon/episodeThumbnail/1.jpg', 148);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 100, 0, 0, '2010-12-26', '��25ȭ �״� �׳��� ����ϴ°�-5', '26���̾�', '/webtoon/episodeThumbnail/2.jpg', 149);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 101, 0, 0, '2011-01-02', '��25ȭ �״� �׳��� ����ϴ°�-6', '26���̾�', '/webtoon/episodeThumbnail/3.jpg', 150);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 102, 0, 0, '2011-01-09', '��25ȭ �״� �׳��� ����ϴ°�-7', '26���̾�', '/webtoon/episodeThumbnail/4.jpg', 151);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 103, 0, 0, '2011-01-16', '��26ȭ ������ �� ���ϴ°�-1', '26���̾�', '/webtoon/episodeThumbnail/5.jpg', 152);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 104, 0, 0, '2011-01-23', '��26ȭ ������ �� ���ϴ°�-2', '26���̾�', '/webtoon/episodeThumbnail/6.jpg', 153);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 105, 0, 0, '2011-01-30', '��26ȭ ������ �� ���ϴ°�-3', '26���̾�', '/webtoon/episodeThumbnail/7.jpg', 154);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	 
values (episode_seq.NEXTVAL, 3, 106, 0, 0, '2011-02-06', '��26ȭ ������ �� ���ϴ°�-4', '26���̾�', '/webtoon/episodeThumbnail/8.jpg', 155);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 107, 0, 0, '2011-02-13', '��26ȭ ������ �� ���ϴ°�-5', '26���̾�', '/webtoon/episodeThumbnail/9.jpg', 156);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 108, 0, 0, '2011-02-20', '��26ȭ ������ �� ���ϴ°�-6', '26���̾�', '/webtoon/episodeThumbnail/10.jpg', 157);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 109, 0, 0, '2011-02-27', '��26ȭ ������ �� ���ϴ°�-7', '26���̾�', '/webtoon/episodeThumbnail/11.jpg', 158);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 110, 0, 0, '2011-03-06', '��27ȭ ���ƿ��� �ʴ� ��-1', '26���̾�', '/webtoon/episodeThumbnail/12.jpg', 159);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 111, 0, 0, '2011-03-13', '��27ȭ ���ƿ��� �ʴ� ��-2', '26���̾�', '/webtoon/episodeThumbnail/13.jpg', 160);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 112, 0, 0, '2011-03-20', '��27ȭ ���ƿ��� �ʴ� ��-3', '26���̾�', '/webtoon/episodeThumbnail/14.jpg', 161);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 113, 0, 0, '2011-03-27', '��27ȭ ���ƿ��� �ʴ� ��-4', '26���̾�', '/webtoon/episodeThumbnail/15.jpg', 162);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 114, 0, 0, '2011-04-03', '��27ȭ ���ƿ��� �ʴ� ��-5', '26���̾�', '/webtoon/episodeThumbnail/16.jpg', 163);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 115, 0, 0, '2011-04-10', '��27ȭ ���ƿ��� �ʴ� ��-6', '26���̾�', '/webtoon/episodeThumbnail/17.jpg', 164);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 116, 0, 0, '2011-04-17', '��27ȭ ���ƿ��� �ʴ� ��-7', '26���̾�', '/webtoon/episodeThumbnail/18.jpg', 165);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 117, 0, 0, '2011-04-24', '��28ȭ ���� �� �ٽ� ��Ƴ�-1', '26���̾�', '/webtoon/episodeThumbnail/19.jpg', 166);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 118, 0, 0, '2011-05-01', '��28ȭ ���� �� �ٽ� ��Ƴ�-2', '26���̾�', '/webtoon/episodeThumbnail/20.jpg', 167);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 119, 0, 0, '2011-05-08', '��28ȭ ���� �� �ٽ� ��Ƴ�-3', '26���̾�', '/webtoon/episodeThumbnail/21.jpg', 168);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 120, 0, 0, '2011-05-15', '��28ȭ ���� �� �ٽ� ��Ƴ�-4', '26���̾�', '/webtoon/episodeThumbnail/22.jpg', 169);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 121, 0, 0, '2011-05-22', '��28ȭ ���� �� �ٽ� ��Ƴ�-5', '26���̾�', '/webtoon/episodeThumbnail/23.jpg', 170);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 122, 0, 0, '2011-05-29', '��28ȭ ���� �� �ٽ� ��Ƴ�-6', '26���̾�', '/webtoon/episodeThumbnail/24.jpg', 171);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 123, 0, 0, '2011-06-05', '��28ȭ ���� �� �ٽ� ��Ƴ�-7', '26���̾�', '/webtoon/episodeThumbnail/25.jpg', 172);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 124, 0, 0, '2011-06-12', '��28ȭ ���� �� �ٽ� ��Ƴ�-8', '26���̾�', '/webtoon/episodeThumbnail/26.jpg', 173);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 125, 0, 0, '2011-06-19', '��28ȭ ���� �� �ٽ� ��Ƴ�-9', '26���̾�', '/webtoon/episodeThumbnail/27.jpg', 174);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 126, 0, 0, '2011-06-26', '��28ȭ ���� �� �ٽ� ��Ƴ�-10', '26���̾�', '/webtoon/episodeThumbnail/28.jpg', 175);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 127, 0, 0, '2011-07-03', '��28ȭ ���� �� �ٽ� ��Ƴ�-11', '26���̾�', '/webtoon/episodeThumbnail/29.jpg', 176);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 128, 0, 0, '2011-07-10', '��28ȭ ���� �� �ٽ� ��Ƴ�-12', '26���̾�', '/webtoon/episodeThumbnail/30.jpg', 177);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 3, 129, 0, 0, '2011-07-17', '��28ȭ ���� �� �ٽ� ��Ƴ�-13', '26���̾�', '/webtoon/episodeThumbnail/31.jpg', 178);


--------table image 
  --- 26�� ȸ�� �̹��� 
---C:/webtoon/fantasy/

insert into image(image_index, episode_sequence, file_name) 
values(1, 106, '/webtoon/fantasy/26���� �̾߱��Ѵ�-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 107, '/webtoon/fantasy/26���� �̾߱��Ѵ�-2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 108, '/webtoon/fantasy/26���� �̾߱��Ѵ�-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 109, '/webtoon/fantasy/���Ÿ� ���� ���ƶ�.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 110, '/webtoon/fantasy/��1ȭ �� ������ ����϶�-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 111, '/webtoon/fantasy/��1ȭ �� ������ ����϶�-2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 112, '/webtoon/fantasy/��2ȭ �������� �ʴ� ����-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 113, '/webtoon/fantasy/��2ȭ �������� �ʴ� ����-2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 114, '/webtoon/fantasy/��2ȭ �������� �ʴ� ����-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 115, '/webtoon/fantasy/��2ȭ �������� �ʴ� ����-4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 116, '/webtoon/fantasy/��3ȭ ��ó�� ���� ���͸� �����-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 117, '/webtoon/fantasy/��3ȭ ��ó�� ���� ���͸� �����-2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 118, '/webtoon/fantasy/��3ȭ ��ó�� ���� ���͸� �����-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 119, '/webtoon/fantasy/��3ȭ ��ó�� ���� ���͸� �����-4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 120, '/webtoon/fantasy/��4ȭ �Ͼ�� �����-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 121, '/webtoon/fantasy/��4ȭ �Ͼ�� �����-2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 122, '/webtoon/fantasy/��4ȭ �Ͼ�� �����-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 123, '/webtoon/fantasy/��4ȭ �Ͼ�� �����-4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 124, '/webtoon/fantasy/��5ȭ �� ���� ����-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 125, '/webtoon/fantasy/��5ȭ �� ���� ����-2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 126, '/webtoon/fantasy/��5ȭ �� ���� ����-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 127, '/webtoon/fantasy/��6ȭ ���� ����� �� �������-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 128, '/webtoon/fantasy/��6ȭ ���� ����� �� �������-2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 129, '/webtoon/fantasy/��6ȭ ���� ����� �� �������-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 130, '/webtoon/fantasy/��6ȭ ���� ����� �� �������-4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 131, '/webtoon/fantasy��7ȭ �ô뿡 �۾��� �����-.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 132, '/webtoon/fantasy/��7ȭ �ô뿡 �۾��� �����-2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 133, '/webtoon/fantasy/��7ȭ �ô뿡 �۾��� �����-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 134, '/webtoon/fantasy/��8ȭ �ô뿡 �۾��� �����-4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 135, '/webtoon/fantasy/��8ȭ �ô뿡 �۾��� �����-5.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 136, '/webtoon/fantasy/��8ȭ �ô뿡 �۾��� �����-6.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 137, '/webtoon/fantasy/��9ȭ ����� ����� �����-1.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 138, '/webtoon/fantasy/��9ȭ ����� ����� �����-2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 139, '/webtoon/fantasy/��9ȭ ����� ����� �����-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 140, '/webtoon/fantasy/��10ȭ ������ ���� Į�� ������-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 141, '/webtoon/fantasy/��10ȭ ������ ���� Į�� ������-2.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 142, '/webtoon/fantasy/��10ȭ ������ ���� Į�� ������-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 143, '/webtoon/fantasy/��10ȭ ������ ���� Į�� ������-4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 144, '/webtoon/fantasy/��11ȭ ����-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 145, '/webtoon/fantasy/��11ȭ ����-2.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 146, '/webtoon/fantasy/��11ȭ ����-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 147, '/webtoon/fantasy/��11ȭ ����-4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 148, '/webtoon/fantasy/��11ȭ ����-5.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 149, '/webtoon/fantasy/��12ȭ ������� �ü�-1.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 150, '/webtoon/fantasy/��12ȭ ������� �ü�-2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 151, '/webtoon/fantasy/��12ȭ ������� �ü�-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 152, '/webtoon/fantasy/��12ȭ ������� �ü�-4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 153, '/webtoon/fantasy/��13ȭ �ۿ�� ���ۿ�-1.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 154, '/webtoon/fantasy/��13ȭ �ۿ�� ���ۿ�-2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 155, '/webtoon/fantasy/��13ȭ �ۿ�� ���ۿ�-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 156, '/webtoon/fantasy/��14ȭ �޺� ������� �Ÿ�-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 157, '/webtoon/fantasy/��14ȭ �޺� ������� �Ÿ�-2.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 158, '/webtoon/fantasy/��14ȭ �޺� ������� �Ÿ�-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 159, '/webtoon/fantasy/��14ȭ �޺� ������� �Ÿ�-4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 160, '/webtoon/fantasy/��15ȭ �ǵ��ƿ��� ����-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 161, '/webtoon/fantasy/��15ȭ �ǵ��ƿ��� ����-2.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 162, '/webtoon/fantasy/��15ȭ �ǵ��ƿ��� ����-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 163, '/webtoon/fantasy/��15ȭ �ǵ��ƿ��� ����-4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 164, '/webtoon/fantasy/��16ȭ �� �ٸ� ��ȹ-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 165, '/webtoon/fantasy/��16ȭ �� �ٸ� ��ȹ-2.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 166, '/webtoon/fantasy/��16ȭ �� �ٸ� ��ȹ-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 167, '/webtoon/fantasy/��16ȭ �� �ٸ� ��ȹ-4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 168, '/webtoon/fantasy/��16ȭ �� �ٸ� ��ȹ-5.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 169, '/webtoon/fantasy/��17ȭ ���ɰ� �Ұ���-1.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 170, '/webtoon/fantasy/��17ȭ ���ɰ� �Ұ���-2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 171, '/webtoon/fantasy/��17ȭ ���ɰ� �Ұ���-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 172, '/webtoon/fantasy/��18ȭ ���� ��ȣ��-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 173, '/webtoon/fantasy/��18ȭ ���� ��ȣ��-2.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 174, '/webtoon/fantasy/��18ȭ ���� ��ȣ��-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 175, '/webtoon/fantasy/��18ȭ ���� ��ȣ��-4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 176, '/webtoon/fantasy/��18ȭ ���� ��ȣ��-5.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 177, '/webtoon/fantasy/��19ȭ �ô�� ������ ������-1.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 178, '/webtoon/fantasy/��19ȭ �ô�� ������ ������-2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 179, '/webtoon/fantasy/��19ȭ �ô�� ������ ������-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 180, '/webtoon/fantasy/��19ȭ �ô�� ������ ������-4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 181, '/webtoon/fantasy/��19ȭ �ô�� ������ ������-5.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 182, '/webtoon/fantasy/��20ȭ �׷����� �ٽ� �Ͼ-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 183, '/webtoon/fantasy/��20ȭ �׷����� �ٽ� �Ͼ-2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 184, '/webtoon/fantasy/��20ȭ �׷����� �ٽ� �Ͼ-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 185, '/webtoon/fantasy/��20ȭ �׷����� �ٽ� �Ͼ-4.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 186, '/webtoon/fantasy/��20ȭ �׷����� �ٽ� �Ͼ-5.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 187, '/webtoon/fantasy/��21ȭ �� ���� �ü�-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 188, '/webtoon/fantasy/��21ȭ �� ���� �ü�-2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 189, '/webtoon/fantasy/��21ȭ �� ���� �ü�-3.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 190, '/webtoon/fantasy/��21ȭ �� ���� �ü�-4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 191, '/webtoon/fantasy/��22ȭ �ʰ� ���� ��-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 192, '/webtoon/fantasy/��22ȭ �ʰ� ���� ��-2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 193, '/webtoon/fantasy/��22ȭ �ʰ� ���� ��-3.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 194, '/webtoon/fantasy/��22ȭ �ʰ� ���� ��-4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 195, '/webtoon/fantasy/��22ȭ �ʰ� ���� ��-5.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 196, '/webtoon/fantasy/��23ȭ ���� ���� ����-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 197, '/webtoon/fantasy/��23ȭ ���� ���� ����-2.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 198, '/webtoon/fantasy/��23ȭ ���� ���� ����-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 199, '/webtoon/fantasy/��24ȭ ������ ��� �����-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 200, '/webtoon/fantasy/��24ȭ ������ ��� �����-2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 201, '/webtoon/fantasy/��25ȭ �״� �׳��� ����ϴ°�-1.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 202, '/webtoon/fantasy/��25ȭ �״� �׳��� ����ϴ°�-2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 203, '/webtoon/fantasy/��25ȭ �״� �׳��� ����ϴ°�-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 204, '/webtoon/fantasy/��25ȭ �״� �׳��� ����ϴ°�-4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 205, '/webtoon/fantasy/��25ȭ �״� �׳��� ����ϴ°�-5.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 206, '/webtoon/fantasy/��25ȭ �״� �׳��� ����ϴ°�-6.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 207, '/webtoon/fantasy/��25ȭ �״� �׳��� ����ϴ°�-7.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 208, '/webtoon/fantasy/��26ȭ ������ �� ���ϴ°�-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 209, '/webtoon/fantasy/��26ȭ ������ �� ���ϴ°�-2.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 210, '/webtoon/fantasy/��26ȭ ������ �� ���ϴ°�-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 211, '/webtoon/fantasy/��26ȭ ������ �� ���ϴ°�-4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 212, '/webtoon/fantasy/��26ȭ ������ �� ���ϴ°�-5.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 213, '/webtoon/fantasy/��26ȭ ������ �� ���ϴ°�-6.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 214, '/webtoon/fantasy/��26ȭ ������ �� ���ϴ°�-7.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 215, '/webtoon/fantasy/��27ȭ ���ƿ��� �ʴ� ��-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 216, '/webtoon/fantasy/��27ȭ ���ƿ��� �ʴ� ��-2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 217, '/webtoon/fantasy/��27ȭ ���ƿ��� �ʴ� ��-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 218, '/webtoon/fantasy/��27ȭ ���ƿ��� �ʴ� ��-4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 219, '/webtoon/fantasy/��27ȭ ���ƿ��� �ʴ� ��-5.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 220, '/webtoon/fantasy/��27ȭ ���ƿ��� �ʴ� ��-6.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 221, '/webtoon/fantasy/��27ȭ ���ƿ��� �ʴ� ��-7.jpg');


insert into image(image_index, episode_sequence, file_name) 
values(1, 222, '/webtoon/fantasy/��28ȭ ���� �� �ٽ� ��Ƴ�-1.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 223, '/webtoon/fantasy/��28ȭ ���� �� �ٽ� ��Ƴ�-2.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 224, '/webtoon/fantasy/��28ȭ ���� �� �ٽ� ��Ƴ�-3.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 225, '/webtoon/fantasy/��28ȭ ���� �� �ٽ� ��Ƴ�-4.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 226, '/webtoon/fantasy/��28ȭ ���� �� �ٽ� ��Ƴ�-5.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 227, '/webtoon/fantasy/��28ȭ ���� �� �ٽ� ��Ƴ�-6.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 228, '/webtoon/fantasy/��28ȭ ���� �� �ٽ� ��Ƴ�-7.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 229, '/webtoon/fantasy/��28ȭ ���� �� �ٽ� ��Ƴ�-8.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 230, '/webtoon/fantasy/��28ȭ ���� �� �ٽ� ��Ƴ�-9.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 231, '/webtoon/fantasy/��28ȭ ���� �� �ٽ� ��Ƴ�-10.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 232, '/webtoon/fantasy/��28ȭ ���� �� �ٽ� ��Ƴ�-11.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 233, '/webtoon/fantasy/��28ȭ ���� �� �ٽ� ��Ƴ�_12.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 234, '/webtoon/fantasy/��28ȭ ���� �� �ٽ� ��Ƴ�_13.jpg');



-- drama category  �ݵ��۰� ����  ���� : �ٺ� 
  --1. webtoon ����
insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�ٺ�','funding','complete','D','green', '����', 1, '�ٺ�-?!', '/webtoon/webtoonThumbnail/1.jpg');



  -- drama funding ȸ�� 
 --select  * from fund;

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
values (episode_seq.NEXTVAL, 4, 1, 0, 0, '2014-01-01', '��1ȭ - ����', '�۰��Ǹ� �ٺ�ٺ�', '/webtoon/episodeThumbnail/30.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 2, 0, 0, '2014-01-08', '��2ȭ - �Ͱ�', '�۰��Ǹ� �ٺ�ٺ�', '/webtoon/episodeThumbnail/31.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 3, 0, 0, '2014-01-15', '��3ȭ - ��', '�۰��Ǹ� �ٺ�ٺ�', '/webtoon/episodeThumbnail/32.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 4, 0, 0, '2014-01-22', '��4ȭ - ī��', '�۰��Ǹ� �ٺ�ٺ�', '/webtoon/episodeThumbnail/33.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 5, 0, 0, '2014-01-29', '��5ȭ - �Ź�', '�۰��Ǹ� �ٺ�ٺ�', '/webtoon/episodeThumbnail/34.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 6, 0, 0, '2014-02-05', '��6ȭ - ģ��', '�۰��Ǹ� �ٺ�ٺ�', '/webtoon/episodeThumbnail/35.jpg', 179);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 7, 0, 0, '2014-02-12', '��7ȭ - �佺Ʈ', '�۰��Ǹ� �ٺ�ٺ�', '/webtoon/episodeThumbnail/36.jpg', 180);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 8, 0, 0, '2014-02-19', '��8ȭ - Ŀ��', '�۰��Ǹ� �ٺ�ٺ�', '/webtoon/episodeThumbnail/37.jpg', 181);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 9, 0, 0, '2014-02-26', '��9ȭ - ����', '�۰��Ǹ� �ٺ�ٺ�', '/webtoon/episodeThumbnail/38.jpg', 182);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 1, 0, 0, '2014-01-01', '��1ȭ - ����', '�۰��Ǹ� �ٺ�ٺ�', '/webtoon/episodeThumbnail/30.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 2, 0, 0, '2014-01-08', '��2ȭ - �Ͱ�', '�۰��Ǹ� �ٺ�ٺ�', '/webtoon/episodeThumbnail/31.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 3, 0, 0, '2014-01-15', '��3ȭ - ��', '�۰��Ǹ� �ٺ�ٺ�', '/webtoon/episodeThumbnail/32.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 4, 0, 0, '2014-01-22', '��4ȭ - ī��', '�۰��Ǹ� �ٺ�ٺ�', '/webtoon/episodeThumbnail/33.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 5, 0, 0, '2014-01-29', '��5ȭ - �Ź�', '�۰��Ǹ� �ٺ�ٺ�', '/webtoon/episodeThumbnail/34.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 6, 0, 0, '2014-02-05', '��6ȭ - ģ��', '�۰��Ǹ� �ٺ�ٺ�', '/webtoon/episodeThumbnail/35.jpg', 179);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 7, 0, 0, '2014-02-12', '��7ȭ - �佺Ʈ', '�۰��Ǹ� �ٺ�ٺ�', '/webtoon/episodeThumbnail/36.jpg', 180);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 8, 0, 0, '2014-02-19', '��8ȭ - Ŀ��', '�۰��Ǹ� �ٺ�ٺ�', '/webtoon/episodeThumbnail/37.jpg', 181);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 9, 0, 0, '2014-02-26', '��9ȭ - ����', '�۰��Ǹ� �ٺ�ٺ�', '/webtoon/episodeThumbnail/38.jpg', 182);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 4, 10, 0, 0, '2014-03-05', '��10ȭ - �ü�', '�۰��Ǹ� �ٺ�ٺ�', '/webtoon/episodeThumbnail/39.jpg', 183);


--ȸ���� image  �ֱ� 
select* from image;

insert into image(image_index, episode_sequence, file_name) 
values(1, 235, '/webtoon/drama/��1ȭ - ����.jpg_13.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 236, '/webtoon/drama/��2ȭ - �Ͱ�.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 237, '/webtoon/drama/��3ȭ - ��.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 238, '/webtoon/drama/��4ȭ - ī��.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 239, '/webtoon/drama/��5ȭ - �Ź�.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 240, '/webtoon/drama/��6ȭ - ģ��.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 241, '/webtoon/drama/��7ȭ - �佺Ʈ.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 242, '/webtoon/drama/��8ȭ - Ŀ��.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 243, '/webtoon/drama/��9ȭ - ����.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 244, '/webtoon/drama/��10ȭ - �ü�.jpg');

--select * from category;



--E thriller  Category �ֱ� '�Ϲ�' 
--select * from user_information;

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'����� ��� ����','free','serial','D','green', '�츮', 0, '�۰��� �� - ����� ��� ����', '/webtoon/webtoonThumbnail/2.jpg');




---episode ����


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 1, 0, 0, '2014-01-01', '������', 'all of your moments', '/webtoon/episodeThumbnail/41.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 2, 0, 0, '2014-01-08', '��1ȭ - �׷��簡_01', 'all of your moments', '/webtoon/episodeThumbnail/42.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 3, 0, 0, '2014-01-15', '��1ȭ - �׷��簡_02','all of your moments',  '/webtoon/episodeThumbnail/43.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 4, 0, 0, '2014-01-22', '��1ȭ - �׷��簡_03','all of your moments',  '/webtoon/episodeThumbnail/44.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 5, 0, 0, '2014-01-29', '��1ȭ - �׷��簡_04','all of your moments',  '/webtoon/episodeThumbnail/45.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 6, 0, 0, '2014-02-05', '��1ȭ - �׷��簡_05', 'all of your moments', '/webtoon/episodeThumbnail/46.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 7, 0, 0, '2014-02-12', '��1ȭ - �׷��簡_06', 'all of your moments', '/webtoon/episodeThumbnail/47.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 8, 0, 0, '2014-02-19', '��2ȭ - ���̳� �� �ᰡ_01', 'all of your moments', '/webtoon/episodeThumbnail/48.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 9, 0, 0, '2014-02-26', '��2ȭ - ���̳� �� �ᰡ_02', 'all of your moments', '/webtoon/episodeThumbnail/49.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 1, 0, 0, '2014-01-01', '������', 'all of your moments', '/webtoon/episodeThumbnail/41.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 2, 0, 0, '2014-01-08', '��1ȭ - �׷��簡_01', 'all of your moments', '/webtoon/episodeThumbnail/42.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 3, 0, 0, '2014-01-15', '��1ȭ - �׷��簡_02','all of your moments',  '/webtoon/episodeThumbnail/43.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 4, 0, 0, '2014-01-22', '��1ȭ - �׷��簡_03','all of your moments',  '/webtoon/episodeThumbnail/44.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 5, 0, 0, '2014-01-29', '��1ȭ - �׷��簡_04','all of your moments',  '/webtoon/episodeThumbnail/45.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 6, 0, 0, '2014-02-05', '��1ȭ - �׷��簡_05', 'all of your moments', '/webtoon/episodeThumbnail/46.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 7, 0, 0, '2014-02-12', '��1ȭ - �׷��簡_06', 'all of your moments', '/webtoon/episodeThumbnail/47.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 8, 0, 0, '2014-02-19', '��2ȭ - ���̳� �� �ᰡ_01', 'all of your moments', '/webtoon/episodeThumbnail/48.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 9, 0, 0, '2014-02-26', '��2ȭ - ���̳� �� �ᰡ_02', 'all of your moments', '/webtoon/episodeThumbnail/49.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 5, 10, 0, 0, '2014-03-05', '��2ȭ - ���̳� �� �ᰡ_03','all of your moments',  '/webtoon/episodeThumbnail/50.jpg', null);


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
values (webtoon_seq.nextval,'�̿����','funding','serial','F','green', '����', 1, '�̿����-?!', '/webtoon/webtoonThumbnail/3.jpg');



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
values (episode_seq.NEXTVAL, 6, 1, 0, 0, '2010-03-01', '������.jpg','�̿� ���_?',  '/webtoon/episodeThumbnail/51.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 6, 2, 0, 0, '2010-01-08', '��1ȭ - �Ͱ�_01','�̿� ���_?',  '/webtoon/episodeThumbnail/52.jpg', null);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 6, 2, 0, 0, '2010-01-08', '��1ȭ - �Ͱ�_01','�̿� ���_?',  '/webtoon/episodeThumbnail/52.jpg', null);



insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 6, 3, 0, 0, '2010-01-15', '��1ȭ - �Ͱ�_02','�̿� ���_?',  '/webtoon/episodeThumbnail/53.jpg', null);



insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 6, 4, 0, 0, '2010-01-22', '��1ȭ - �Ͱ�_03','�̿� ���_?',  '/webtoon/episodeThumbnail/54.jpg', null);



insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 6, 5, 0, 0, '2010-01-29', '��1ȭ - �Ͱ�_04','�̿� ���_?',  '/webtoon/episodeThumbnail/55.jpg', null);



insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 6, 6, 0, 0, '2010-02-05', '��1ȭ - �Ͱ�_05','�̿� ���_?',  '/webtoon/episodeThumbnail/56.jpg', 135);



insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 6, 7, 0, 0, '2010-02-12', '��2ȭ - �մ�_01','�̿� ���_?',  '/webtoon/episodeThumbnail/57.jpg', 136);



insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 6, 8, 0, 0, '2010-02-19', '��2ȭ - �մ�_02','�̿� ���_?',  '/webtoon/episodeThumbnail/58.jpg', 137);



insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 6, 9, 0, 0, '2010-02-26', '��2ȭ - �մ�_03','�̿� ���_?',  '/webtoon/episodeThumbnail/59.jpg', 138);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 6, 10, 0, 0, '2010-03-05', '��2ȭ - �մ�_04','�̿� ���_?',  '/webtoon/episodeThumbnail/60.jpg', 139);



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
values (webtoon_seq.nextval,'�״븦 ����մϴ�','funding','serial','G','green', '����', 1, '�״� ����մϴ�', '/webtoon/webtoonThumbnail/6.jpg');



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
values (episode_seq.NEXTVAL, 7, 10, 0, 0, '2010-03-01', '������', '�״뿩~', '/webtoon/episodeThumbnail/61.jpg', null);



insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 7, 10, 0, 0, '2010-03-08', '��1ȭ - ����_1', '�״뿩~', '/webtoon/episodeThumbnail/62.jpg', null);



insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 7, 10, 0, 0, '2010-03-15', '��1ȭ - ����_2', '�״뿩~', '/webtoon/episodeThumbnail/63.jpg', null);



insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 7, 10, 0, 0, '2010-03-22', '��1ȭ - ����_3', '�״뿩~', '/webtoon/episodeThumbnail/64.jpg', null);



insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 7, 10, 0, 0, '2010-03-22', '��1ȭ - ����_4', '�״뿩~', '/webtoon/episodeThumbnail/65.jpg', null);



insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 7, 10, 0, 0, '2010-03-29', '��1ȭ - ����_5', '�״뿩~', '/webtoon/episodeThumbnail/66.jpg', 140);



insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 7, 10, 0, 0, '2010-04-05', '��1ȭ - ����_6', '�״뿩~', '/webtoon/episodeThumbnail/1.jpg', 141);



insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 7, 10, 0, 0, '2010-04-12', '��2ȭ - �����_1', '�״뿩~', '/webtoon/episodeThumbnail/2.jpg', 142);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 7, 10, 0, 0, '2010-04-19', '��2ȭ - �����_2','�״뿩~',  '/webtoon/episodeThumbnail/3.jpg', 143);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 7, 10, 0, 0, '2010-04-26', '��2ȭ - �����_3', '�״뿩~', '/webtoon/episodeThumbnail/4.jpg', 144);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 7, 10, 0, 0, '2010-04-26', '��2ȭ - �����_3', '�״뿩~', '/webtoon/episodeThumbnail/4.jpg', 144);


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
values (webtoon_seq.nextval,'���� ��ȭ','funding','serial','H','green', '����', 1, '���ǲ��', '/webtoon/webtoonThumbnail/4.jpg');


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
values (episode_seq.NEXTVAL, 8, 1, 0, 0, '2008-02-01', 'no.1 - elevator', '���ǲ��', '/webtoon/episodeThumbnail/5.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 2, 0, 0, '2008-02-08', 'no.2 -necktie', '���ǲ��', '/webtoon/episodeThumbnail/6.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 3, 0, 0, '2008-02-15', 'no.3 - present', '���ǲ��', '/webtoon/episodeThumbnail/7.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 4, 0, 0, '2008-02-22', 'no.4 - emotion','���ǲ��',  '/webtoon/episodeThumbnail/8.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 5, 0, 0, '2008-02-29', 'no.5 - same age','���ǲ��',  '/webtoon/episodeThumbnail/9.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 6, 0, 0, '2008-03-07', 'no.6 - couple', '���ǲ��', '/webtoon/episodeThumbnail/10.jpg', 145);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 7, 0, 0, '2008-03-14', 'no.7 - name', '���ǲ��', '/webtoon/episodeThumbnail/11.jpg', 146);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 8, 0, 0, '2008-03-21', 'no.8 - the first snow', '���ǲ��', '/webtoon/episodeThumbnail/12.jpg', 147);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 9, 0, 0, '2008-03-28', 'no.9 - cold', '���ǲ��', '/webtoon/episodeThumbnail/13.jpg', 148);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 10, 0, 0, '2008-04-04', 'no.10 - two of us','���ǲ��',  '/webtoon/episodeThumbnail/14.jpg', 149);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 2, 0, 0, '2008-02-08', 'no.2 -necktie', '���ǲ��', '/webtoon/episodeThumbnail/6.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 3, 0, 0, '2008-02-15', 'no.3 - present', '���ǲ��', '/webtoon/episodeThumbnail/7.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 4, 0, 0, '2008-02-22', 'no.4 - emotion','���ǲ��',  '/webtoon/episodeThumbnail/8.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 5, 0, 0, '2008-02-29', 'no.5 - same age','���ǲ��',  '/webtoon/episodeThumbnail/9.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 6, 0, 0, '2008-03-07', 'no.6 - couple', '���ǲ��', '/webtoon/episodeThumbnail/10.jpg', 145);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 7, 0, 0, '2008-03-14', 'no.7 - name', '���ǲ��', '/webtoon/episodeThumbnail/11.jpg', 146);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 8, 0, 0, '2008-03-21', 'no.8 - the first snow', '���ǲ��', '/webtoon/episodeThumbnail/12.jpg', 147);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 9, 0, 0, '2008-03-28', 'no.9 - cold', '���ǲ��', '/webtoon/episodeThumbnail/13.jpg', 148);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 8, 10, 0, 0, '2008-04-04', 'no.10 - two of us','���ǲ��',  '/webtoon/episodeThumbnail/14.jpg', 149);




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
values (webtoon_seq.nextval,'Ÿ�̹�','free','complete','I','green', '����', 0, '��� �� Ÿ�̹�~', '/webtoon/webtoonThumbnail/5.jpg');

--


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 1, 0, 0, '2008-06-01', '������','��� �� Ÿ�̹�~',  '/webtoon/episodeThumbnail/15.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 2, 0, 0, '2008-06-08', '��1ȭ - ������ ƴ_1','��� �� Ÿ�̹�~',  '/webtoon/episodeThumbnail/16.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 3, 0, 0, '2008-06-15', '��1ȭ - ������ ƴ_2','��� �� Ÿ�̹�~',  '/webtoon/episodeThumbnail/17.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 4, 0, 0, '2008-06-22', '��1ȭ - ������ ƴ_3', '��� �� Ÿ�̹�~', '/webtoon/episodeThumbnail/18.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 5, 0, 0, '2008-06-29', '��1ȭ - ������ ƴ_4','��� �� Ÿ�̹�~',  '/webtoon/episodeThumbnail/19.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 6, 0, 0, '2008-07-06', '��2ȭ - 10��_1','��� �� Ÿ�̹�~',  '/webtoon/episodeThumbnail/20.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 7, 0, 0, '2008-07-13', '��2ȭ - 10��_2', '��� �� Ÿ�̹�~', '/webtoon/episodeThumbnail/21.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 8, 0, 0, '2008-07-20', '��2ȭ - 10��_3','��� �� Ÿ�̹�~',  '/webtoon/episodeThumbnail/22.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 9, 0, 0, '2008-07-27', '��2ȭ - 10��_4', '��� �� Ÿ�̹�~', '/webtoon/episodeThumbnail/23.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 10, 0, 0, '2008-08-03', '��2ȭ - 10��_5', '��� �� Ÿ�̹�~', '/webtoon/episodeThumbnail/24.jpg', null);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 2, 0, 0, '2008-06-08', '��1ȭ - ������ ƴ_1','��� �� Ÿ�̹�~',  '/webtoon/episodeThumbnail/16.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 3, 0, 0, '2008-06-15', '��1ȭ - ������ ƴ_2','��� �� Ÿ�̹�~',  '/webtoon/episodeThumbnail/17.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 4, 0, 0, '2008-06-22', '��1ȭ - ������ ƴ_3', '��� �� Ÿ�̹�~', '/webtoon/episodeThumbnail/18.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 5, 0, 0, '2008-06-29', '��1ȭ - ������ ƴ_4','��� �� Ÿ�̹�~',  '/webtoon/episodeThumbnail/19.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 6, 0, 0, '2008-07-06', '��2ȭ - 10��_1','��� �� Ÿ�̹�~',  '/webtoon/episodeThumbnail/20.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 7, 0, 0, '2008-07-13', '��2ȭ - 10��_2', '��� �� Ÿ�̹�~', '/webtoon/episodeThumbnail/21.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 8, 0, 0, '2008-07-20', '��2ȭ - 10��_3','��� �� Ÿ�̹�~',  '/webtoon/episodeThumbnail/22.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 9, 0, 0, '2008-07-27', '��2ȭ - 10��_4', '��� �� Ÿ�̹�~', '/webtoon/episodeThumbnail/23.jpg', null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 9, 10, 0, 0, '2008-08-03', '��2ȭ - 10��_5', '��� �� Ÿ�̹�~', '/webtoon/episodeThumbnail/24.jpg', null);


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

--���� �ϱ� 


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
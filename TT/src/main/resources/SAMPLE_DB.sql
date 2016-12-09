-- sample DB 
select * from webtoon;
select * from user_information;


--1 user info

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('minah@naver.com','�ξ�','minah','01099335577',11000,'�ݵ��۰�','��ξ�','��','930513');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('aoa@hanmail.net','����','aoa','01023226577',32000,'�۰�','�輳��','��','950103');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('dahyeon@gmail.com','����','dahyeon','01088997788',1000,'����','�����','��','980528');

--2 additional info 

insert into additional_info (email,account_password,bank_name,account_number,identification_card)
values ('minah@naver.com','minah','�������ݰ�','444555666777','identification5.jpg');

-- webtoon table 
-- ���� �۰� , �ξ� �ݵ��۰� 
-- webtoon-state : ���� , ���� , ����ε� , ����Ϸ� (serial,pause,blind,complete)
-- penalty : red, yellow, green   
-- funding_period : 7, 14 ( �� ����(day))

delete from webtoon 

select * from webtoon;
select * from category;

delete from webtoon;

-- webtoon webtoon-state : ����

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period,summary, webtoon_thumbnail)
values (webtoon_seq.NEXTVAL,'������ȭ','�Ϲ�','serial','A','green','����',null,'����� �л��� some',null);

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period,summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'����Ʈ','�ݵ�','serial ','B','green','�ξ�',7,'����Ʈ ����',null);

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period,summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�ٺ�','����','serial','C','green','�ξ�',null,'����� �л��� some',null);

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period,summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'������','�ݵ�','serial','F','green','�ξ�',14,null,null);



-- webtoon-state : ����
insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period,summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'Ÿ�̹�','�Ϲ�','pause','D','green','�ξ�',null,null,null);

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period,summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'26��','�Ϲ�','pause','E','green','�ξ�',null,null,null);

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period,summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�״븦 ����մϴ�','�Ϲ�','pause','F','green','�ξ�',null,null,null);

--webtoon state : ���� �Ϸ�

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period,summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�̿����','�ݵ�','complete','D','green','�ξ�',7,null,null);

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period,summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�����','�ݵ�','complete','E','green','�ξ�',7,null,null);

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period,summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'����� ��� ����','�ݵ�','complete','F','green','�ξ�',14,null,null);


--delete from webtoon; 
--select * from webtoon;

--apply_fund ��û - �Ϲ���ǰ �� ���� score �� �Ѱܾ� funding ��û ���� 

insert into apply_fund (apply_fund_sequence, email, webtoon_code,score)
values(a_f_seq,'minah@naver.com',4,900);


--appy_paid ��û 

insert into apply_paid (apply_paid_sequence,email,webtoon_code)
values ( a_p_seq.NEXTVAL,'minah@naver.com',10);



--funding webtoon �ݵ� ��û 

--insert into fund (fund_code,episode_fund,webtoon_code,episode_number)
--values (fund_seq.NEXTVAL,50000,10,4);

--DELETE FROM FUND 


--�ݵ� ������ �⺻ ����  (webtoon code 2,4,8,9,10 

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



--episode ȸ���� ���� 

	-- fundingWebtoon episode �߰� 2,4, 8,9,10
	insert into episode (episode_sequence,episode_number,hits,recommendation,upload_date,webtoon_code,episode_title,author_word,fund_code)	
	values (episode_seq.NEXTVAL,1,110,150,'2016-03-02 ',2,'����Ʈ-����Ʈ-1','�۰��Ǹ�',null);
	
	insert into episode (episode_sequence,episode_number,hits,recommendation,upload_date,webtoon_code,episode_title,author_word,fund_code)	
	values (episode_seq.NEXTVAL,2,10,20,'2016-03-09',2,'����Ʈ-����Ʈ-2','�۰��Ǹ�',null);
	
	insert into episode (episode_sequence,episode_number,hits,recommendation,upload_date,webtoon_code,episode_title,author_word,fund_code)	
	values (episode_seq.NEXTVAL,3,20,20,'2016-03-16',2,'����Ʈ-����Ʈ-3','�۰��Ǹ�',null);
	
	insert into episode (episode_sequence,episode_number,hits,recommendation,upload_date,webtoon_code,episode_title,author_word,fund_code)	
	values (episode_seq.NEXTVAL,4,30,30,'2016-03-22',2,'����Ʈ-����Ʈ-4','�۰��Ǹ�',4);
	
	insert into episode (episode_sequence,episode_number,hits,recommendation,upload_date,webtoon_code,episode_title,author_word,fund_code)	
	values (episode_seq.NEXTVAL,5,40,40,'2016-03-29',2,'����Ʈ-����Ʈ-5','�۰��Ǹ�',5);

	insert into episode (episode_sequence,episode_number,hits,recommendation,upload_date,webtoon_code,episode_title,author_word,fund_code)	
	values (episode_seq.NEXTVAL,1,150,150,'2016-03-30',4,'Ÿ�̹�-������ ƴ-1','�۰��Ǹ�',null);
	
	insert into episode (episode_sequence,episode_number,hits,recommendation,upload_date,webtoon_code,episode_title,author_word,fund_code)	
	values (episode_seq.NEXTVAL,2,150,150,'2016-04-6',4,'Ÿ�̹�-������ ƴ-2','�۰��Ǹ�',null);
	
	insert into episode (episode_sequence,episode_number,hits,recommendation,upload_date,webtoon_code,episode_title,author_word,fund_code)	
	values (episode_seq.NEXTVAL,3,150,150,'2016-04-13',4,'Ÿ�̹�-������ ƴ-3','�۰��Ǹ�',null);
	
	insert into episode (episode_sequence,episode_number,hits,recommendation,upload_date,webtoon_code,episode_title,author_word,fund_code)	
	values (episode_seq.NEXTVAL,4,150,150,'2016-04-20',4,'Ÿ�̹�-������ ƴ-4','�۰��Ǹ�',4);
	
	insert into episode (episode_sequence,episode_number,hits,recommendation,upload_date,webtoon_code,episode_title,author_word,fund_code)	
	values (episode_seq.NEXTVAL,5,150,150,'2016-04-27',4,'Ÿ�̹�-10��-1','�۰��Ǹ�',5);
	
	insert into episode (episode_sequence,episode_number,hits,recommendation,upload_date,webtoon_code,episode_title,author_word,fund_code)	
	values (episode_seq.NEXTVAL,1,150,150,'2016-04-28',8,'�����-�����-1','�۰��Ǹ�',null);
	
	insert into episode (episode_sequence,episode_number,hits,recommendation,upload_date,webtoon_code,episode_title,author_word,fund_code)	
	values (episode_seq.NEXTVAL,2,150,150,'2016-05-5',8,'�����-�����-2','�۰��Ǹ�',null);
	
	insert into episode (episode_sequence,episode_number,hits,recommendation,upload_date,webtoon_code,episode_title,author_word,fund_code)	
	values (episode_seq.NEXTVAL,3,150,150,'2016-05-12',8,'�����-�����-3','�۰��Ǹ�',null);
	
	insert into episode (episode_sequence,episode_number,hits,recommendation,upload_date,webtoon_code,episode_title,author_word,fund_code)	
	values (episode_seq.NEXTVAL,4,150,150,'2016-05-19',8,'�����-�����-4','�۰��Ǹ�',4);
	
	insert into episode (episode_sequence,episode_number,hits,recommendation,upload_date,webtoon_code,episode_title,author_word,fund_code)	
	values (episode_seq.NEXTVAL,5,150,150,'2016-05-26',8,'�����-�����-5','�۰��Ǹ�',5);
	
	insert into episode (episode_sequence,episode_number,hits,recommendation,upload_date,webtoon_code,episode_title,author_word,fund_code)	
	values (episode_seq.NEXTVAL,1,150,150,'2016-05-27',9,'�׷��簡-1','�۰��Ǹ�',null);
	
	insert into episode (episode_sequence,episode_number,hits,recommendation,upload_date,webtoon_code,episode_title,author_word,fund_code)	
	values (episode_seq.NEXTVAL,2,150,150,'2016-06-03',9,'�׷��簡-2','�۰��Ǹ�',null);
	
	insert into episode (episode_sequence,episode_number,hits,recommendation,upload_date,webtoon_code,episode_title,author_word,fund_code)	
	values (episode_seq.NEXTVAL,3,150,150,'2016-06-10',9,'�׷��簡-3','�۰��Ǹ�',null);
	
	insert into episode (episode_sequence,episode_number,hits,recommendation,upload_date,webtoon_code,episode_title,author_word,fund_code)	
	values (episode_seq.NEXTVAL,4,150,150,'2016-06-17',9,'�׷��簡-4','�۰��Ǹ�',4);
	
	insert into episode (episode_sequence,episode_number,hits,recommendation,upload_date,webtoon_code,episode_title,author_word,fund_code)	
	values (episode_seq.NEXTVAL,5,150,150,'2016-06-24',9,'�׷��簡-5','�۰��Ǹ�',5);
	
	insert into episode (episode_sequence,episode_number,hits,recommendation,upload_date,webtoon_code,episode_title,author_word,fund_code)	
	values (episode_seq.NEXTVAL,1,150,150,'2016-06-25',10,'������-����������-1','�۰��Ǹ�',null);
	
	insert into episode (episode_sequence,episode_number,hits,recommendation,upload_date,webtoon_code,episode_title,author_word,fund_code)	
	values (episode_seq.NEXTVAL,2,150,150,'2016-07-02',10,'������-����������-2','�۰��Ǹ�',null);
	
	insert into episode (episode_sequence,episode_number,hits,recommendation,upload_date,webtoon_code,episode_title,author_word,fund_code)	
	values (episode_seq.NEXTVAL,3,150,150,'2016-07-09',10,'������-����������-3','�۰��Ǹ�',null);
	
	insert into episode (episode_sequence,episode_number,hits,recommendation,upload_date,webtoon_code,episode_title,author_word,fund_code)	
	values (episode_seq.NEXTVAL,4,150,150,'2016-07-16',10,'������-����������-4','�۰��Ǹ�',4);
	
	insert into episode (episode_sequence,episode_number,hits,recommendation,upload_date,webtoon_code,episode_title,author_word,fund_code)	
	values (episode_seq.NEXTVAL,5,150,150,'2016-07-23',10,'������-����������-5','�۰��Ǹ�',5);
	
	
	-- *** image ���̺� ���� 
	--insert into image (image_index,episode_sequence,file_name) values ()
	

	--  	
	--insert (start_date,due_date,episode_sequence) values ()
	insert webtoon_
	

	
--delete from webtoon;







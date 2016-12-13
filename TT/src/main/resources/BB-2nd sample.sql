-- webtoon_category_DB �����Ͽ����ϴ�.

-- ���̵�� ������ �ξƸ� ����߽��ϴ�. user Informatio_DB

-- insert  ī�װ� A action webtoon ���� : ����Ʈ -  ********   �Ϲ��۰�    *******
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

-- webtoon Ÿ��Ʋ + ���� 


(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (1,'����Ʈ','free','serial','A','green', '����', null, '����Ʈ����..?!', null);

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period,summary, webtoon_thumbnail)
values (2,'�����','funding','serial ','B','green','�ξ�',7,'����Ʈ ����',null);
--
--------------------------------------------------------------------------------------------------------------------------------------------
----     ******************* Action '����Ʈ' episode �ֱ� // �Ϲ� ��ǰ   C:\webtoon\action/����Ʈ �����ȿ� �̹��� �ٷ� �ֱ�   *****************************
--
--DELETE FROM EPISODE WHERE EPISODE_SEQUENCE = 1
--SELECT * FROM EPISODE;

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 1, 0, 0, '2016-03-02 ', '������', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 2, 0, 0, '2016-03-02 ', '��1ȭ - ����Ʈ_1', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 3, 0, 0, '2016-03-02 ', '��1ȭ - ����Ʈ_2', '�۰��Ǹ� ���������Ϳ���?', null, null);
insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 4, 0, 0, '2016-03-02 ', '��1ȭ - ����Ʈ_3', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 5, 0, 0, '2016-03-02 ', '��1ȭ - ����Ʈ_4', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 6, 0, 0, '2016-03-02 ', '��1ȭ - ����Ʈ_5', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 7, 0, 0, '2016-03-02 ', '��2ȭ - �� ������ �ü�_1', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 8, 0, 0, '2016-03-02 ', '��2ȭ - �� ������ �ü�_2', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 9, 0, 0, '2016-03-02 ', '��2ȭ - �� ������ �ü�_3', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 10, 0, 0, '2016-03-02 ', '��2ȭ - �� ������ �ü�_4', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 11, 0, 0, '2016-03-02 ', '��2ȭ - �� ������ �ü�_5', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 12, 0, 0, '2016-03-02 ', '��3ȭ - ������ �� �θ��� �ִ�_1', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 13, 0, 0, '2016-03-02 ', '��3ȭ - ������ �� �θ��� �ִ�_2', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 14, 0, 0, '2016-03-02 ', '��3ȭ - ������ �� �θ��� �ִ�_3', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 15, 0, 0, '2016-03-02 ', '��3ȭ - ������ �� �θ��� �ִ�_4', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 16, 0, 0, '2016-03-02 ', '��3ȭ - ������ �� �θ��� �ִ�_5', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 17, 0, 0, '2016-03-02 ', '��6ȭ - ��������_1', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 18, 0, 0, '2016-03-02 ', '��6ȭ - ��������_2', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 19, 0, 0, '2016-03-02 ', '��6ȭ - ��������_3', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 20, 0, 0, '2016-03-02 ', '��6ȭ - ��������_4', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 21, 0, 0, '2016-03-02 ', '��6ȭ - ��������_5', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 22, 0, 0, '2016-03-02 ', '��7ȭ - ���� ����_1', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 23, 0, 0, '2016-03-02 ', '��7ȭ - ���� ����_2', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 24, 0, 0, '2016-03-02 ', '��7ȭ - ���� ����_3', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 25, 0, 0, '2016-03-02 ', '��7ȭ - ���� ����_4', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 26, 0, 0, '2016-03-02 ', '��7ȭ - ���� ����_5', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 27, 0, 0, '2016-03-02 ', '��8ȭ - �ͽ�_1', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 28, 0, 0, '2016-03-02 ', '��8ȭ - �ͽ�_2', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 29, 0, 0, '2016-03-02 ', '��8ȭ - �ͽ�_3', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 30, 0, 0, '2016-03-02 ', '��8ȭ - �ͽ�_4', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 31, 0, 0, '2016-03-02 ', '��8ȭ - �ͽ�_5', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 32, 0, 0, '2016-03-02 ', '��8ȭ - �ͽ�_6', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 33, 0, 0, '2016-03-02 ', '��8ȭ - �ͽ�_7', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 34, 0, 0, '2016-03-02 ', '��8ȭ - �ͽ�_8', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 35, 0, 0, '2016-03-02 ', '��8ȭ - �ͽ�_9', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 36, 0, 0, '2016-03-02 ', '��8ȭ - �ͽ�_10', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 37, 0, 0, '2016-03-02 ', '��8ȭ - �ͽ�_11', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 38, 0, 0, '2016-03-02 ', '��8ȭ - �ͽ�_12', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 39, 0, 0, '2016-03-02 ', '��8ȭ - �ͽ�_13', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 40, 0, 0, '2016-03-02 ', '��8ȭ - �ͽ�_14', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 41, 0, 0, '2016-03-02 ', '��8ȭ - �ͽ�_15', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 42, 0, 0, '2016-03-02 ', '��8ȭ - �ͽ�_16', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 43, 0, 0, '2016-03-02 ', '��8ȭ - �ͽ�_17', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 44, 0, 0, '2016-03-02 ', '��8ȭ - �ͽ�_18', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 45, 0, 0, '2016-03-02 ', '��8ȭ - �ͽ�_19', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 1, 46, 0, 0, '2016-03-02 ', '��8ȭ - �ͽ�_20', '�۰��Ǹ� ���������Ϳ���?', null, null);

--insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
--recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
--values (1, 1, 47, 0, 0, '2016-03-02 ', '1_Apartment2', '�۰��Ǹ� ���������Ϳ���?', null, null);
--insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
--recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
--values (1, 1, 48, 0, 0, '2016-03-02 ', '1_Apartment3', '�۰��Ǹ� ���������Ϳ���?', null, null);
--
--insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
--recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
--values (1, 1, 49, 0, 0, '2016-03-02 ', '1_Apartment4', '�۰��Ǹ� ���������Ϳ���?', null, null);

select * from episode order by episode_sequence

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


select * from episode;
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



select * from fund;


--------------------------------------** fund webtoon-----------------------------------------------------------------------------------------------------------------
insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 1, 0, 0, '2011-01-01', '������', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 2, 0, 0, '2011-01-08', '��1ȭ - 1�� ����� 1ȭ_01', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 3, 0, 0, '2011-01-15', '��1ȭ - 1�� ����� 1ȭ_02', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 4, 0, 0, '2011-01-22', '��1ȭ - 1�� ����� 1ȭ_03', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 5, 0, 0, '2011-01-29', '��1ȭ - 1�� ����� 1ȭ_04', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 6, 0, 0, '2011-02-05', '��1ȭ - 1�� ����� 1ȭ_05', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 7, 0, 0, '2011-02-12', '��1ȭ - 1�� ����� 1ȭ_06', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 8, 0, 0, '2011-02-19', '��1ȭ - 1�� ����� 1ȭ_07', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 9, 0, 0, '2011-02-26', '��1ȭ - 1�� ����� 1ȭ_08', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 10, 0, 0, '2011-03-04', '��1ȭ - 1�� ����� 1ȭ_09', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 11, 0, 0, '2011-03-11', '��1ȭ - 1�� ����� 1ȭ_10', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 12, 0, 0, '2011-03-18', '��2ȭ - 1�� ����� 2ȭ_01', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 13, 0, 0, '2011-03-25', '��2ȭ - 1�� ����� 2ȭ_02', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 14, 0, 0, '2011-04-01', '��2ȭ - 1�� ����� 2ȭ_03', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 15, 0, 0, '2011-04-08', '��2ȭ - 1�� ����� 2ȭ_04', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 16, 0, 0, '2011-04-15', '��2ȭ - 1�� ����� 2ȭ_06', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 17, 0, 0, '2011-04-22', '��2ȭ - 1�� ����� 2ȭ_07', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 18, 0, 0, '2011-04-29', '��2ȭ - 1�� ����� 2ȭ_08', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 19, 0, 0, '2011-05-06', '��2ȭ - 1�� ����� 2ȭ_09', '�۰��Ǹ� ���������Ϳ���?', null, null);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 20, 0, 0, '2011-05-13', '��2ȭ - 1�� ����� 2ȭ_10', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 21, 0, 0, '2011-05-20', '��2ȭ - 1�� ����� 2ȭ_11', '�۰��Ǹ� ���������Ϳ���?', null, null);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 22, 0, 0, '2011-05-27', '��2ȭ - 1�� ����� 2ȭ_12', '�۰��Ǹ� ���������Ϳ���?', null, null);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 23, 0, 0, '2011-06-03', '��2ȭ - 1�� ����� 2ȭ_13', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 24, 0, 0, '2011-06-10', '��2ȭ - 1�� ����� 2ȭ_14', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 25, 0, 0, '2011-06-17', '��2ȭ - 1�� ����� 2ȭ_15', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 26, 0, 0, '2011-06-23', '��2ȭ - 1�� ����� 2ȭ_16', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 27, 0, 0, '2011-06-30', '��2ȭ - 1�� ����� 2ȭ_17', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 28, 0, 0, '2011-07-07', '��2ȭ - 1�� ����� 2ȭ_18', '�۰��Ǹ� ���������Ϳ���?', null, null);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 29, 0, 0, '2011-07-09', '��3ȭ - 1�� ����� 3ȭ_01', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 30, 0, 0, '2011-07-16', '��3ȭ - 1�� ����� 3ȭ_02', '�۰��Ǹ� ���������Ϳ���?', null, null);


insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 31, 0, 0, '2011-07-23', '��3ȭ - 1�� ����� 3ȭ_03', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 32, 0, 0, '2011-07-30', '��3ȭ - 1�� ����� 3ȭ_04', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 33, 0, 0, '2011-08-05', '��3ȭ - 1�� ����� 3ȭ_05', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 34, 0, 0, '2011-08-12', '��3ȭ - 1�� ����� 3ȭ_06', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 35, 0, 0, '2011-08-19', '��3ȭ - 1�� ����� 3ȭ_07', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 36, 0, 0, '2011-08-26', '��3ȭ - 1�� ����� 3ȭ_08', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 37, 0, 0, '2011-09-02', '��3ȭ - 1�� ����� 3ȭ_09', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 38, 0, 0, '2011-09-09', '��3ȭ - 1�� ����� 3ȭ_10', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 39, 0, 0, '2011-09-16', '��4ȭ - 1�� ����� 4ȭ_01', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 40, 0, 0, '2011-09-22', '��4ȭ - 1�� ����� 4ȭ_02', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 41, 0, 0, '2011-09-29', '��4ȭ - 1�� ����� 4ȭ_03', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 42, 0, 0, '2011-10-06', '��4ȭ - 1�� ����� 4ȭ_04', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 43, 0, 0, '2011-10-13', '��4ȭ - 1�� ����� 4ȭ_05', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 44, 0, 0, '2011-10-20', '��4ȭ - 1�� ����� 4ȭ_06', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 45, 0, 0, '2011-10-27', '��4ȭ - 1�� ����� 4ȭ_07', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 46, 0, 0, '2011-11-03', '��4ȭ - 1�� ����� 4ȭ_08', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 47, 0, 0, '2011-11-10', '��4ȭ - 1�� ����� 4ȭ_09', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 48, 0, 0, '2011-11-17', '��4ȭ - 1�� ����� 4ȭ_10', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 49, 0, 0, '2011-11-24', '��5ȭ - 1�� ����� 5ȭ_1', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 50, 0, 0, '2011-12-02', '��5ȭ - 1�� ����� 5ȭ_2', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 51, 0, 0, '2011-12-09', '��5ȭ - 1�� ����� 5ȭ_3', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 52, 0, 0, '2011-12-16', '��5ȭ - 1�� ����� 5ȭ_4', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 53, 0, 0, '2011-12-23', '��5ȭ - 1�� ����� 5ȭ_5', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 54, 0, 0, '2011-12-30', '��5ȭ - 1�� ����� 5ȭ_6', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 55, 0, 0, '2012-01-06 ', '��5ȭ - 1�� ����� 5ȭ_7', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 56, 0, 0, '2012-01-13', '��5ȭ - 1�� ����� 5ȭ_8', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 57, 0, 0, '2012-01-20', '��5ȭ - 1�� ����� 5ȭ_9', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 58, 0, 0, '2011-01-27', '��5ȭ - 1�� ����� 5ȭ_10', '�۰��Ǹ� ���������Ϳ���?', null, null);

insert into episode (episode_sequence, webtoon_code, episode_number, hits, 
recommendation, upload_date, episode_title, author_word, thumbnail, fund_code) 	
values (episode_seq.NEXTVAL, 2, 59, 0, 0, '2011-02-03', '��5ȭ - 1�� ����� 5ȭ_11', '�۰��Ǹ� ���������Ϳ���?', null, null);



--------------------- c:/webtoon/sf/����� �̹��� ��� ��  ������ ���� 59��   -----------------------------------------------------------------------------

insert into image(image_index, episode_sequence, file_name) 
values(1, 1, '/webtoon/sf/������.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 2, '/webtoon/sf/��1ȭ - 1�� ����� 1ȭ_01.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 3, '/webtoon/sf/��1ȭ - 1�� ����� 1ȭ_02.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 4, '/webtoon/sf/��1ȭ - 1�� ����� 1ȭ_03.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 5, '/webtoon/sf/��1ȭ - 1�� ����� 1ȭ_04.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 6, '/webtoon/sf/��1ȭ - 1�� ����� 1ȭ_05.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 7, '/webtoon/sf/��1ȭ - 1�� ����� 1ȭ_06.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 8, '/webtoon/sf/��1ȭ - 1�� ����� 1ȭ_07.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 9, '/webtoon/sf/��1ȭ - 1�� ����� 1ȭ_08.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 10, '/webtoon/sf/��1ȭ - 1�� ����� 1ȭ_09.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 11, '/webtoon/sf/��1ȭ - 1�� ����� 1ȭ_10.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 12, '/webtoon/sf/��2ȭ - 1�� ����� 2ȭ_01.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 13, '/webtoon/sf/��2ȭ - 1�� ����� 2ȭ_02.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 14, '/webtoon/sf/��2ȭ - 1�� ����� 2ȭ_03.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 15, '/webtoon/sf/��2ȭ - 1�� ����� 2ȭ_04.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 16, '/webtoon/sf/��2ȭ - 1�� ����� 2ȭ_05.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 17, '/webtoon/sf/��2ȭ - 1�� ����� 2ȭ_06.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 18, '/webtoon/sf/��2ȭ - 1�� ����� 2ȭ_07.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 19, '/webtoon/sf/��2ȭ - 1�� ����� 2ȭ_08.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 20, '/webtoon/sf/��2ȭ - 1�� ����� 2ȭ_09.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 21, '/webtoon/sf/��2ȭ - 1�� ����� 2ȭ_10.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 22, '/webtoon/sf/��2ȭ - 1�� ����� 2ȭ_11.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 23, '/webtoon/sf/��2ȭ - 1�� ����� 2ȭ_12.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 24, '/webtoon/sf/��2ȭ - 1�� ����� 2ȭ_13.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 25, '/webtoon/sf/��2ȭ - 1�� ����� 2ȭ_14.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 26, '/webtoon/sf/��2ȭ - 1�� ����� 2ȭ_15.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 27, '/webtoon/sf/��2ȭ - 1�� ����� 2ȭ_16.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 28, '/webtoon/sf/��2ȭ - 1�� ����� 2ȭ_17.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 29, '/webtoon/sf/��2ȭ - 1�� ����� 2ȭ_18.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 30, '/webtoon/sf/��3ȭ - 1�� ����� 3ȭ_01.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 31, '/webtoon/sf/��3ȭ - 1�� ����� 3ȭ_02.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 32, '/webtoon/sf/��3ȭ - 1�� ����� 3ȭ_03.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 33, '/webtoon/sf/��3ȭ - 1�� ����� 3ȭ_04.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 34, '/webtoon/sf/��3ȭ - 1�� ����� 3ȭ_05.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 35, '/webtoon/sf/��3ȭ - 1�� ����� 3ȭ_06.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 36, '/webtoon/sf/��3ȭ - 1�� ����� 3ȭ_07.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 37, '/webtoon/sf/��3ȭ - 1�� ����� 3ȭ_08.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 38, '/webtoon/sf/��3ȭ - 1�� ����� 3ȭ_09.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 39, '/webtoon/sf/��3ȭ - 1�� ����� 3ȭ_10.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 40, '/webtoon/sf/��4ȭ - 1�� ����� 4ȭ_01.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 41, '/webtoon/sf/��4ȭ - 1�� ����� 4ȭ_02.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 42, '/webtoon/sf/��4ȭ - 1�� ����� 4ȭ_03.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 43, '/webtoon/sf/��4ȭ - 1�� ����� 4ȭ_04.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 44, '/webtoon/sf/��4ȭ - 1�� ����� 4ȭ_05.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 45, '/webtoon/sf/��4ȭ - 1�� ����� 4ȭ_06.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 46, '/webtoon/sf/��4ȭ - 1�� ����� 4ȭ_07.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 47, '/webtoon/sf/��4ȭ - 1�� ����� 4ȭ_08.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 48, '/webtoon/sf/��4ȭ - 1�� ����� 4ȭ_09.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 49, '/webtoon/sf/��5ȭ - 1�� ����� 5ȭ_01.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 50, '/webtoon/sf/��5ȭ - 1�� ����� 5ȭ_02.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 51, '/webtoon/sf/��5ȭ - 1�� ����� 5ȭ_03.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 52, '/webtoon/sf/��5ȭ - 1�� ����� 5ȭ_04.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 53, '/webtoon/sf/��5ȭ - 1�� ����� 5ȭ_05.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 54, '/webtoon/sf/��5ȭ - 1�� ����� 5ȭ_06.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 55, '/webtoon/sf/��5ȭ - 1�� ����� 5ȭ_07.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 56, '/webtoon/sf/��5ȭ - 1�� ����� 5ȭ_08.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 57, '/webtoon/sf/��5ȭ - 1�� ����� 5ȭ_09.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 58, '/webtoon/sf/��5ȭ - 1�� ����� 5ȭ_10.jpg');

insert into image(image_index, episode_sequence, file_name) 
values(1, 59, '/webtoon/sf/��5ȭ - 1�� ����� 5ȭ_11.jpg');


select * from image;

--delete from image;
--select * from image;
--select * from episode where webtoon_code = 2;

 --delete from episode;

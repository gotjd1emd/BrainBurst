-- Category �߰� insert

-- category + webtoon -> catoon  
select * from category order by category_code;

insert into category (category_code, category_name)
values ('A','�׼�');

insert into category (category_code, category_name)
values ('B','SF');

insert into category (category_code, category_name)
values ('C','��Ÿ��');

insert into category (category_code, category_name)
values ('D','���');

insert into category (category_code, category_name)
values ('E','������');

insert into category (category_code, category_name)
values ('F','�ϻ�');

insert into category (category_code, category_name)
values ('G','����');

insert into category (category_code, category_name)
values ('H','����');

insert into category (category_code, category_name)
values ('I','��Ÿ');



----



insert into webtoon
(webtoon_code, webtoon_name, webtoon_level,webtoon_state,category_code,nickname,funding_period,summary,webtoon_thumbnail)
values (nextval,'����Ʈ','�Ϲ�','serial','A','����',null, null, null);

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level,webtoon_state,category_code,nickname,funding_period,summary,webtoon_thumbnail)
values (nextval,'�����','�Ϲ�','serial','B','����',null,null, null);




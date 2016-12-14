-- Category 추가 insert

-- category + webtoon -> catoon  
select * from category order by category_code;

insert into category (category_code, category_name)
values ('A','액션');

insert into category (category_code, category_name)
values ('B','SF');

insert into category (category_code, category_name)
values ('C','판타지');

insert into category (category_code, category_name)
values ('D','드라마');

insert into category (category_code, category_name)
values ('E','스릴러');

insert into category (category_code, category_name)
values ('F','일상');

insert into category (category_code, category_name)
values ('G','개그');

insert into category (category_code, category_name)
values ('H','성인');

insert into category (category_code, category_name)
values ('I','기타');



----



insert into webtoon
(webtoon_code, webtoon_name, webtoon_level,webtoon_state,category_code,nickname,funding_period,summary,webtoon_thumbnail)
values (nextval,'아파트','일반','serial','A','보영',null, null, null);

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level,webtoon_state,category_code,nickname,funding_period,summary,webtoon_thumbnail)
values (nextval,'어게인','일반','serial','B','병재',null,null, null);




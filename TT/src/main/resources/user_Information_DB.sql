
	--- User information Insert (20개) 독자 작가 펀딩작가
select * from user_information;

delete * from user_information where email ='test@google.com';


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
values ('leonard@naver.com','레너드','leonard','01077559988',7000,'독자','카와이레너드','남','880127');

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
values ('nayeon@naver.com','나연','nayeon','01093441366',1000,'독자','임나연','여','950922');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('dahyeon@gmail.com','다현','dahyeon','01088997788',1000,'독자','김다현','남','980528');

insert into user_information 
(email,nickname,password,phone,cash_point,user_level,name,gender,birth_date) 
values ('girlfriend@hanmail.net','유주','girfriend','01034112211',3000,'독자','최유나','남','971004');


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

commit;

select * from user_information;

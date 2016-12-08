-- additional_info table Inforomation insert 

commit;

select * from additional_info;
select * from user_information join additional_info using (email)

--환전 비밀번호,은행이름,계좌번호, indenticaation_card

insert into additional_info (email,account_password,bank_name,account_number,identification_card)
values ('byeongjae@gmail.com','byeongjae','우리','000222333444','identification1.jpg'); 

insert into additional_info (email,account_password,bank_name,account_number,identification_card)
values ('goeun@gmail.com','goeun','국민','111222333444','identification2.jpg');

insert into additional_info (email,account_password,bank_name,account_number,identification_card)
values ('jei@naver.com','jei','기업','222333444555666','identification3.jpg');

insert into additional_info (email,account_password,bank_name,account_number,identification_card)
values ('hyeri@gmail.com','hyeri','신한','333444555666','identification4.jpg');

insert into additional_info (email,account_password,bank_name,account_number,identification_card)
values ('minah@naver.com','minah','새마을금고','444555666777','identification5.jpg');





-- 
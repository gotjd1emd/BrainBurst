-- additional_info table Inforomation insert 

commit;

select * from additional_info;
select * from user_information join additional_info using (email)

--ȯ�� ��й�ȣ,�����̸�,���¹�ȣ, indenticaation_card

insert into additional_info (email,account_password,bank_name,account_number,identification_card)
values ('byeongjae@gmail.com','byeongjae','�츮','000222333444','identification1.jpg'); 

insert into additional_info (email,account_password,bank_name,account_number,identification_card)
values ('goeun@gmail.com','goeun','����','111222333444','identification2.jpg');

insert into additional_info (email,account_password,bank_name,account_number,identification_card)
values ('jei@naver.com','jei','���','222333444555666','identification3.jpg');

insert into additional_info (email,account_password,bank_name,account_number,identification_card)
values ('hyeri@gmail.com','hyeri','����','333444555666','identification4.jpg');

insert into additional_info (email,account_password,bank_name,account_number,identification_card)
values ('minah@naver.com','minah','�������ݰ�','444555666777','identification5.jpg');





-- 
-- cash history insert 
select * from user_information where user_level = 'µ¶ÀÚ' 

insert into cash_history 
(cash_history_sequence,account_day,email,cash_point,content,trade_state)
values (1,sysdate,'lion@naver.com',200,)
--SELECT * FROM EPISODE WHERE WEBTOON_CODE = 4


--1. �Ϲ� free ��ǰ �ֱ�

-- webtoon_level = free,funding,paid, 
-- webtoon_state = blind,complete,pause,serial 

--SELECT * FROM USER_INFORMATION WHERE USER_LEVEL != '����' ORDER BY USER_LEVEL;
--SELECT * FROM WEBTOON ORDER BY WEBTOON_CODE;
--select * from web


insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'����','free','serial','A','green', '����', 0, 'laugh', '/webtoon/webtoonThumbnail/22.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�ڸ�','free','serial','B','green', '����', 0, '�ڸ�', '/webtoon/webtoonThumbnail/23.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�׸���','free','serial','C','green', '�츮', 0, 'shade', '/webtoon/webtoonThumbnail/24.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'���','free','serial','D','green', '����', 0, '���~', '/webtoon/webtoonThumbnail/25.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'��','free','serial','E','green', '����', 0, '��~', '/webtoon/webtoonThumbnail/26.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'ù��','free','serial','F','green', '����', 0, 'ù��', '/webtoon/webtoonThumbnail/27.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�Ÿ�','free','serial','G','green', '����', 0, 'street', '/webtoon/webtoonThumbnail/28.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'����','free','serial','H','green', '�츮', 0, '����', '/webtoon/webtoonThumbnail/29.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'���帧','free','serial','I','green', '����', 0, '���帧', '/webtoon/webtoonThumbnail/30.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�ٺ�','free','serial','A','green', '����', 0, '�ٺ�', '/webtoon/webtoonThumbnail/31.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�ο�','free','serial','B','green', '����', 0, '�ο�', '/webtoon/webtoonThumbnail/32.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�̾߱�','free','serial','C','green', '����', 0, '�̾߱�', '/webtoon/webtoonThumbnail/33.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'���','free','serial','D','green', '�츮', 0, '���', '/webtoon/webtoonThumbnail/34.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'���','free','serial','E','green', '����', 0, '���', '/webtoon/webtoonThumbnail/35.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�׻�','free','serial','F','green', '����', 0, '�׻�', '/webtoon/webtoonThumbnail/36.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�ձ�','free','serial','G','green', '�ξ�', 0, '�ձ�', '/webtoon/webtoonThumbnail/37.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'����','free','serial','H','green', '����', 0, '����', '/webtoon/webtoonThumbnail/38.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'����','free','serial','I','green', '�츮', 0, '����', '/webtoon/webtoonThumbnail/39.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'��Ź','free','serial','A','green', '����', 0, '��Ź', '/webtoon/webtoonThumbnail/40.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'ħ��','free','serial','B','green', '����', 0, 'ħ��', '/webtoon/webtoonThumbnail/41.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'��ó','free','serial','C','green', '����', 0, '��ó', '/webtoon/webtoonThumbnail/42.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'ġ��','free','serial','D','green', '����', 0, 'ġ��', '/webtoon/webtoonThumbnail/43.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�׷���','free','serial','E','green', '�츮', 0, '�׷���', '/webtoon/webtoonThumbnail/44.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�ٷ�','free','serial','F','green', '����', 0, '�ٷ�', '/webtoon/webtoonThumbnail/45.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'���','free','serial','G','green', '����', 0, '���', '/webtoon/webtoonThumbnail/46.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'������ ��','free','serial','H','green', '����', 0, '�·���', '/webtoon/webtoonThumbnail/47.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�λ�','free','serial','I','green', '����', 0, '�λ�', '/webtoon/webtoonThumbnail/48.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�ǹ�','free','serial','A','green', '�츮', 0, '�ǹ�', '/webtoon/webtoonThumbnail/49.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�׸���','free','serial','B','green', '����', 0, '�׸���', '/webtoon/webtoonThumbnail/50.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'����Ű��','free','serial','C','green', '����', 0, '����Ű��', '/webtoon/webtoonThumbnail/51.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'TEN','free','serial','D','green', '����', 0, 'TEN', '/webtoon/webtoonThumbnail/52.jpg');





--2. funding ��ǰ �ֱ�

-- webtoon_level = free,funding,paid, 
-- webtoon_state = blind,complete,pause,serial 

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�츮���̴���','funding','serial','H','green', '����', 1, '�츮����', '/webtoon/webtoonThumbnail/53.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�� ���� �ִ� ��','funding','serial','B','green', '����', 1, '����', '/webtoon/webtoonThumbnail/54.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'������','funding','serial','A','green', '����', 1, '����', '/webtoon/webtoonThumbnail/55.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'���� �ٷι���','funding','serial','B','green', '����', 1, '�ٷι���', '/webtoon/webtoonThumbnail/56.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'���� �� ���� �ڸ�','funding','serial','C','green', '����', 1, '�ڸ�', '/webtoon/webtoonThumbnail/57.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'ȯ�������ϱ�','funding','serial','D','green', '����', 1, 'ȯ������', '/webtoon/webtoonThumbnail/58.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'���Ѱ�õ��','funding','serial','E','green', '����', 1, '���Ѱ�', '/webtoon/webtoonThumbnail/59.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�ִ�����','funding','serial','F','green', '����', 1, '�ִ�', '/webtoon/webtoonThumbnail/60.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�ְ��յ�','funding','serial','G','green', '����', 1, '�ְ�', '/webtoon/webtoonThumbnail/61.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�ɼ��󼼶�','funding','serial','H','green', '�ξ�', 1, '�ɼ���', '/webtoon/webtoonThumbnail/62.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'����� �ҳ�','funding','serial','I','green', '����', 1, '�����', '/webtoon/webtoonThumbnail/63.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�ʶ� ����','funding','serial','A','green', '����', 1, '��', '/webtoon/webtoonThumbnail/64.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'������ ����̱�[������]','funding','serial','B','green', '����', 1, '����', '/webtoon/webtoonThumbnail/65.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�Ŀ�','funding','serial','C','green', '����', 1, '�Ŀ�', '/webtoon/webtoonThumbnail/66.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�ھ������','funding','serial','D','green', '�ξ�', 1, '�ھ�', '/webtoon/webtoonThumbnail/67.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'��н����� ¦���','funding','serial','E','green', '����', 1, '��н�����', '/webtoon/webtoonThumbnail/68.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'���÷��װ׸�ȭ','funding','serial','F','green', '����', 1, '���÷���', '/webtoon/webtoonThumbnail/69.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�Һ񷯿� ���ߴ�!','funding','serial','G','green', '����', 1, '�Һ�', '/webtoon/webtoonThumbnail/70.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'��ö���� �̾߱�','funding','serial','H','green', '����', 1, '��ö����', '/webtoon/webtoonThumbnail/71.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�鼭���','funding','serial','I','green', '�ξ�', 1, '�鼭���', '/webtoon/webtoonThumbnail/72.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'���� ���� ����','funding','serial','A','green', '����', 1, '���� ��', '/webtoon/webtoonThumbnail/73.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�Ҷ��� ��','funding','serial','B','green', '����', 1, '�Ҷ�', '/webtoon/webtoonThumbnail/74.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�ԻԻԻ�','funding','serial','C','green', '����', 1, '��', '/webtoon/webtoonThumbnail/75.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'õ����','funding','serial','D','green', '����', 1, 'õ��', '/webtoon/webtoonThumbnail/76.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'������ ����','funding','serial','E','green', '�ξ�', 1, '����', '/webtoon/webtoonThumbnail/7.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'���ռ� ���ִ�','funding','serial','E','green', '����', 1, '���ռ�', '/webtoon/webtoonThumbnail/78.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�ζ�ģ��','funding','serial','F','green', '����', 1, '�ζ�ģ��', '/webtoon/webtoonThumbnail/79.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'ǥ�ر԰�����','funding','serial','G','green', '����', 1, 'ǥ�ر԰�', '/webtoon/webtoonThumbnail/80.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'���غҴ�','funding','serial','H','green', '����', 1, '���غҴ�', '/webtoon/webtoonThumbnail/81.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'��������','funding','serial','I','green', '����', 1, '��������', '/webtoon/webtoonThumbnail/82.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�ɰ��� �λ�','funding','serial','A','green', '�ξ�', 1, '�ɰ���', '/webtoon/webtoonThumbnail/83.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'������ �����ְ�','funding','serial','B','green', '����', 1, '������', '/webtoon/webtoonThumbnail/84.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�̼����ֹڻ�','funding','serial','C','green', '����', 1, '�̼�����', '/webtoon/webtoonThumbnail/85.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�鵵��','funding','serial','D','green', '����', 1, '�鵵��', '/webtoon/webtoonThumbnail/86.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'���� ����ϴ� �ʵ��л�','funding','serial','E','green', '�ξ�', 1, '���� ����ϴ� ', '/webtoon/webtoonThumbnail/87.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'������ ����','funding','serial','F','green', '����', 1, '������ ', '/webtoon/webtoonThumbnail/88.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'���� �ڵ�','funding','serial','G','green', '����', 1, '����', '/webtoon/webtoonThumbnail/89.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�ǵ����� ����','funding','serial','H','green', '����', 1, '�ǵ����� ', '/webtoon/webtoonThumbnail/90.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'����','funding','serial','I','green', '����', 1, '����', '/webtoon/webtoonThumbnail/91.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�����','funding','serial','A','green', '�ξ�', 1, '�����', '/webtoon/webtoonThumbnail/92.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'���� �� ���̵�','funding','serial','B','green', '����', 1, '���� ��', '/webtoon/webtoonThumbnail/93.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�Ϸ����� ���ƿ�','funding','serial','C','green', '����', 1, '�Ϸ�����', '/webtoon/webtoonThumbnail/94.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�ֱⴺ','funding','serial','D','green', '����', 1, '�ֱⴺ', '/webtoon/webtoonThumbnail/95.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'����','funding','serial','E','green', '����', 1, '����', '/webtoon/webtoonThumbnail/96.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�þ� ��Ű��','funding','serial','F','green', '�ξ�', 1, '�þ�', '/webtoon/webtoonThumbnail/97.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�̸� ���� ����','funding','serial','G','green', '����', 1, '�̸� ����', '/webtoon/webtoonThumbnail/98.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'������ �ϻ�','funding','serial','H','green', '����', 1, '������', '/webtoon/webtoonThumbnail/99.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'����','funding','serial','I','green', '����', 1, '����', '/webtoon/webtoonThumbnail/100.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'����Ŀ�','funding','serial','A','green', '����', 1, '����Ŀ�', '/webtoon/webtoonThumbnail/101.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'���뿡','funding','serial','B','green', '�ξ�', 1, '���뿡', '/webtoon/webtoonThumbnail/102.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'����Ŭ��','funding','serial','C','green', '����', 1, '����Ŭ��', '/webtoon/webtoonThumbnail/103.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'������','funding','serial','D','green', '����', 1, '�����', '/webtoon/webtoonThumbnail/104.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'Ŀư�� �Ʒ��׶�','funding','serial','E','green', '����', 1, 'Ŀư', '/webtoon/webtoonThumbnail/106.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'������ ����','funding','serial','F','green', '����', 1, '������', '/webtoon/webtoonThumbnail/105.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'ȯ������','funding','serial','G','green', '�ξ�', 1, 'ȯ������', '/webtoon/webtoonThumbnail/107.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�Ͼ�õ�翡��','funding','serial','H','green', '����', 1, '�Ͼ� ����', '/webtoon/webtoonThumbnail/108.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'������ ����','funding','serial','I','green', '����', 1, '����', '/webtoon/webtoonThumbnail/109.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'��ŸƮ','funding','serial','A','green', '����', 1, '��ŸƮ', '/webtoon/webtoonThumbnail/110.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'��������','funding','serial','B','green', '����', 1, '��������', '/webtoon/webtoonThumbnail/111.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�ؼҼ�','funding','serial','C','green', '�ξ�', 1, '�ؼҼ�', '/webtoon/webtoonThumbnail/112.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�����ϼҼ�','funding','serial','D','green', '����', 1, '����', '/webtoon/webtoonThumbnail/113.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'����� ���','funding','serial','E','green', '����', 1, '���', '/webtoon/webtoonThumbnail/114.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�ű��','funding','serial','F','green', '����', 1, '�ű��', '/webtoon/webtoonThumbnail/115.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'������ ��κ��ν�','funding','serial','G','green', '����', 1, '������', '/webtoon/webtoonThumbnail/116.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'��Ʈ����','funding','serial','H','green', '�ξ�', 1, '��Ʈ����', '/webtoon/webtoonThumbnail/117.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�״���','funding','serial','I','green', '����', 1, '�״���', '/webtoon/webtoonThumbnail/118.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'������','funding','serial','A','green', '����', 1, '������', '/webtoon/webtoonThumbnail/119.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�θ�ƽ ������','funding','serial','B','green', '����', 1, '����', '/webtoon/webtoonThumbnail/120.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'���� ����','funding','serial','C','green', '����', 1, '����', '/webtoon/webtoonThumbnail/121.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�巡�� ����','funding','serial','D','green', '�ξ�', 1, '�巡��', '/webtoon/webtoonThumbnail/122.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'4�ƿ��','funding','serial','E','green', '����', 1, '���', '/webtoon/webtoonThumbnail/123.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�� ����� ��������','funding','serial','F','green', '����', 1, '��������', '/webtoon/webtoonThumbnail/124.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'���� ȣ���̴�','funding','serial','G','green', '����', 1, 'ȣ���̴�', '/webtoon/webtoonThumbnail/125.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'��Ͼ� ����','funding','serial','H','green', '����', 1, '��Ͼ�', '/webtoon/webtoonThumbnail/126.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'��','funding','serial','I','green', '����', 1, '��', '/webtoon/webtoonThumbnail/127.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'����� �ҳ�','funding','serial','A','green', '�ξ�', 1, '����', '/webtoon/webtoonThumbnail/128.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'ź���ҳ�','funding','serial','B','green', '����', 1, 'ź���ҳ�', '/webtoon/webtoonThumbnail/129.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'������ ��','funding','serial','C','green', '����', 1, '������ ��', '/webtoon/webtoonThumbnail/130.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�ȳ� ����','funding','serial','D','green', '����', 1, '�ȳ� ����', '/webtoon/webtoonThumbnail/131.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�������','funding','serial','E','green', '�ξ�', 1, '�������', '/webtoon/webtoonThumbnail/132.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'������ �� ��','funding','serial','F','green', '����', 1, '������ �� ��', '/webtoon/webtoonThumbnail/133.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'����Go','funding','serial','G','green', '����', 1, '����Go', '/webtoon/webtoonThumbnail/134.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�����','funding','serial','H','green', '����', 1, '�����', '/webtoon/webtoonThumbnail/135.jpg');



��
--3. ��ǰ paid ����ȭ ���� 

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�׳��ɱݺ����һ�','paid','complete','A','green', '����', 1, '�׳� ��', '/webtoon/webtoonThumbnail/136.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'���������','paid','complete','B','green', '�ξ�', 1, '��� ������', '/webtoon/webtoonThumbnail/137.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�����ν���','paid','complete','C','green', '����', 1, '���� �� ����', '/webtoon/webtoonThumbnail/138.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�׸��ڰ���','paid','complete','D','green', '����', 1, '�׸��� ����', '/webtoon/webtoonThumbnail/139.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'��������','paid','complete','E','green', '����', 1, '���� ����', '/webtoon/webtoonThumbnail/140.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'���õ� ������ ��ȭ','paid','complete','F','green', '����', 1, '���õ� ������', '/webtoon/webtoonThumbnail/141.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'���� �͸ӰŸ���','paid','complete','G','green', '�ξ�', 1, '���� �͸ӰŸ�', '/webtoon/webtoonThumbnail/142.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'����߽��ϴ�','paid','complete','H','green', '����', 1, '����߽��ϴ�.', '/webtoon/webtoonThumbnail/143.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'������ ��� ��ȭ','paid','complete','I','green', '����', 1, '������ ', '/webtoon/webtoonThumbnail/144.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'����','paid','complete','A','green', '����', 1, '����', '/webtoon/webtoonThumbnail/145.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'���õ�','paid','complete','B','green', '����', 1, '���� �׷���', '/webtoon/webtoonThumbnail/146.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'Ʈ��츶','paid','complete','C','green', '�ξ�', 1, 'Ʈ��츶', '/webtoon/webtoonThumbnail/147.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�츮���� ����','paid','complete','D','green', '����', 1, '�츮���� ��', '/webtoon/webtoonThumbnail/148.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�츮 ������ ���̵�','paid','complete','E','green', '����', 1, '���̵�', '/webtoon/webtoonThumbnail/149.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�ε��ɹ�','paid','complete','F','green', '����', 1, '�ε�', '/webtoon/webtoonThumbnail/150.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'������ �̾߱�','paid','complete','G','green', '����', 1, '������', '/webtoon/webtoonThumbnail/151.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'������ ���� ����','paid','complete','H','green', '�ξ�', 1, '������', '/webtoon/webtoonThumbnail/152.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�����ϱ�','paid','complete','I','green', '����', 1, '����', '/webtoon/webtoonThumbnail/153.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'����','paid','complete','A','green', '����', 1, '����', '/webtoon/webtoonThumbnail/154.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'����Ž����Ȱ','paid','complete','B','green', '����', 1, '����Ž��', '/webtoon/webtoonThumbnail/155.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'����������','paid','complete','C','green', '����', 1, '����������', '/webtoon/webtoonThumbnail/156.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'ȫ�� ���극','paid','complete','D','green', '�ξ�', 1, 'ȫ��', '/webtoon/webtoonThumbnail/157.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�ɾ 30��','paid','complete','E','green', '����', 1, '�ɾ', '/webtoon/webtoonThumbnail/158.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'��Ƽ����','paid','complete','F','green', '����', 1, '��Ƽ����', '/webtoon/webtoonThumbnail/159.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'DOLL','paid','complete','G','green', '����', 1, 'doLL', '/webtoon/webtoonThumbnail/160.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�׳�� ���� �Ⱦ���','paid','complete','H','green', '����', 1, '�׳�� ���� �Ⱦ���', '/webtoon/webtoonThumbnail/161.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'����Ŭ','paid','complete','I','green', '�ξ�', 1, '����Ŭ', '/webtoon/webtoonThumbnail/162.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'����','paid','complete','A','green', '����', 1, '����', '/webtoon/webtoonThumbnail/163.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'������, ��3�̾�','paid','complete','B','green', '����', 1, '������', '/webtoon/webtoonThumbnail/164.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�����_�¾��� ��','paid','complete','C','green', '����', 1, '�����', '/webtoon/webtoonThumbnail/165.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'����','paid','complete','D','green', '����', 1, '����', '/webtoon/webtoonThumbnail/166.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�ϻﳲ��','paid','complete','E','green', '�ξ�', 1, '�ϻﳲ��', '/webtoon/webtoonThumbnail/167.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'���','paid','complete','F','green', '����', 1, '���', '/webtoon/webtoonThumbnail/168.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�ξ��','paid','complete','G','green', '����',  1, '�ξ��', '/webtoon/webtoonThumbnail/169.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�׸��׸��� ������','paid','complete','H','green', '����',  1, '�׸��׸���', '/webtoon/webtoonThumbnail/170.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'�ξ��� ����','paid','complete','I','green', '����',  1, '�ξ��� ����', '/webtoon/webtoonThumbnail/171.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'���','paid','complete','A','green', '�ξ�',  1, '���', '/webtoon/webtoonThumbnail/172.jpg');

insert into webtoon
(webtoon_code, webtoon_name, webtoon_level, webtoon_state, category_code,penalty,nickname, funding_period, summary, webtoon_thumbnail)
values (webtoon_seq.nextval,'����','paid','complete','B','green', '����',  1, '����', '/webtoon/webtoonThumbnail/173.jpg');

 commit;








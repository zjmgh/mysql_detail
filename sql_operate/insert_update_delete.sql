
create table table_name
(
    id int not null
);

-- �������� --
insert into table_name (id) values (1);

-- �������� --
update table_name set id = 2 where id = 1;

-- ɾ������  δ��where������ɾ�������������� --
delete from table_name where id = 2;
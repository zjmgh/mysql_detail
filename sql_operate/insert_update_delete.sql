
create table table_name
(
    id int not null
);

-- 插入数据 --
insert into table_name (id) values (1);

-- 更新数据 --
update table_name set id = 2 where id = 1;

-- 删除数据  未带where条件则删除表内所有数据 --
delete from table_name where id = 2;
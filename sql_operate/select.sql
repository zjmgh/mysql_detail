create table if not exists table_name (
      `id` int (11) not null auto_increment,
      primary key (`id`)
)engine=InnoDB default charset = utf8;

-- 查询数据 --
select * from table_name;

/*
    where 子句
    可以在where子句中指定任何条件
    可以使用and或者or指定一个或多个条件
    where也可以用于删除和更新操作
*/
select * from table_name where id = 1 or ( id = 2 and id = 3);


/*
    like 子句
    在where子句中使用like子句
    可以用like代替=
    like通常和%一同使用，类似一个元字符的搜索
*/
select * from table_name where id like '%1%';


/*
    union 子句
    用于连接两个以上的select语句的结果组合到一个结果集中，多个select语句会删除重复的数据
    distinct: 可选，删除结果集中的重复的数据，默认情况下union操作符已经删除了重复数据
    all: 可选，返回所有的结果集，包含重复数据
*/
select * from table_name where id = 1 union all select * from table_name where id = 2;


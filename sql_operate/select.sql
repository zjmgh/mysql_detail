create table if not exists table_name (
      `id` int (11) not null auto_increment,
      primary key (`id`)
)engine=InnoDB default charset = utf8;

create table if not exists table_name1 (
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


/*
    order by 子句
    可以使用任何字段作为排序的条件，从而返回排序后的结果
    可以设定多个字段来排序
    可以使用asc或者desc关键字来设置查询结果是按升序还是降序排列，默认情况下是按asc升序排列。
*/
select * from table_name order by id desc;


/*
    group by 子句
    根据一个或多个列对结果集进行分组，在分组的列上可以使用count，sum，avg等函数
*/
select id, count(id) from table_name group by id;


/*
    连接
    大致分为三类：
        inner join 内连接 获取两个表中字段匹配关系的记录
        left join 左连接 获取左表所有记录，即使右表没有对应匹配的记录
        right join 右连接 获取右表所有记录，即使左表没有对应匹配的记录
*/
select a.* from table_name as a inner join table_name1 as b on a.id = b.id;

/*
    limit 子句
    根据偏移量和限制大小查询特定条数的数据，格式：偏移量,限制大小
*/
select * from table_name limit 0,1;

/*
    子查询
    子查询就是嵌套在其他查询中的查询， 在where子句中使用子查询，应该保证select语句具有和where子句中相同数目的列，通常，子查询将返回单个列并且与单个列匹配。
*/
select * from table_name where id in (select id from table_name1);
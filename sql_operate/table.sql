/*
    创建数据表

    如果你不想字段为null，可以设置属性为：not null, 在操作数据表时输入该字段为null时，就会报错
    auto_increment 定义列为自增属性，一般用于主键，数值会自动加1
    primary key 关键字用于定义列为主键。可以定义多个主键，用逗号隔开
    engine 设置存储引擎(可在之后介绍)
    charset 设置编码
*/

create table if not exists table_name (
    `id` int (11) not null auto_increment,
    primary key (`id`)
)engine=InnoDB default charset = utf8;


-- 删除数据表 --
drop table table_name;

-- 添加表字段 --
alter table table_name add a int(11) not null ;

-- 删除表字段 --
alter table table_name drop a;

-- 修改字段类型及名称 modify 关键字 --
alter table table_name modify a char (10);

-- 使用 CHANGE 子句, 语法有很大的不同。 在 CHANGE 关键字之后，紧跟着的是你要修改的字段名，然后指定新字段名及类型 --
alter table table_name change a b char(10);

-- 修改表名 --
alter table table_name rename to table_name1;

-- 展示所有的数据表 --
show tables ;

-- 展示单个表的详细信息 --
show create table table_name;

-- 展示单个表的结构 --
desc table_name;

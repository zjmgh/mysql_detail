/*
    索引
*/

create table if not exists table_name (
          `id` int (11) not null auto_increment,
          `name` varchar(20) not null default '',
          index index_name(name),
          primary key (`id`)
)engine=InnoDB default charset = utf8;


/*
    普通索引
*/

## 创建索引
create index index_name on table_name(name);

## 修改表结构(添加索引)
alter table table_name add index index_name(name);

## 删除索引
drop index index_name on table_name;

## 修改表结构删除索引
alter table table_name drop index index_name;

## 显示索引信息
show index from table_name;




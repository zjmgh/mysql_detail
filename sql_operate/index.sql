/*
    ����
*/

create table if not exists table_name (
          `id` int (11) not null auto_increment,
          `name` varchar(20) not null default '',
          index index_name(name),
          primary key (`id`)
)engine=InnoDB default charset = utf8;


/*
    ��ͨ����
*/

## ��������
create index index_name on table_name(name);

## �޸ı�ṹ(�������)
alter table table_name add index index_name(name);

## ɾ������
drop index index_name on table_name;

## �޸ı�ṹɾ������
alter table table_name drop index index_name;

## ��ʾ������Ϣ
show index from table_name;




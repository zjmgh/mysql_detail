/*
    �������ݱ�

    ����㲻���ֶ�Ϊnull��������������Ϊ��not null, �ڲ������ݱ�ʱ������ֶ�Ϊnullʱ���ͻᱨ��
    auto_increment ������Ϊ�������ԣ�һ��������������ֵ���Զ���1
    primary key �ؼ������ڶ�����Ϊ���������Զ������������ö��Ÿ���
    engine ���ô洢����(����֮�����)
    charset ���ñ���
*/

create table if not exists table_name (
    `id` int (11) not null auto_increment,
    primary key (`id`)
)engine=InnoDB default charset = utf8;


-- ɾ�����ݱ� --
drop table table_name;

-- ��ӱ��ֶ� --
alter table table_name add a int(11) not null ;

-- ɾ�����ֶ� --
alter table table_name drop a;

-- �޸��ֶ����ͼ����� modify �ؼ��� --
alter table table_name modify a char (10);

-- ʹ�� CHANGE �Ӿ�, �﷨�кܴ�Ĳ�ͬ�� �� CHANGE �ؼ���֮�󣬽����ŵ�����Ҫ�޸ĵ��ֶ�����Ȼ��ָ�����ֶ��������� --
alter table table_name change a b char(10);

-- �޸ı��� --
alter table table_name rename to table_name1;

-- չʾ���е����ݱ� --
show tables ;

-- չʾ���������ϸ��Ϣ --
show create table table_name;

-- չʾ������Ľṹ --
desc table_name;

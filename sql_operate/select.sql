create table if not exists table_name (
      `id` int (11) not null auto_increment,
      primary key (`id`)
)engine=InnoDB default charset = utf8;

-- ��ѯ���� --
select * from table_name;

/*
    where �Ӿ�
    ������where�Ӿ���ָ���κ�����
    ����ʹ��and����orָ��һ����������
    whereҲ��������ɾ���͸��²���
*/
select * from table_name where id = 1 or ( id = 2 and id = 3);


/*
    like �Ӿ�
    ��where�Ӿ���ʹ��like�Ӿ�
    ������like����=
    likeͨ����%һͬʹ�ã�����һ��Ԫ�ַ�������
*/
select * from table_name where id like '%1%';


/*
    union �Ӿ�
    ���������������ϵ�select���Ľ����ϵ�һ��������У����select����ɾ���ظ�������
    distinct: ��ѡ��ɾ��������е��ظ������ݣ�Ĭ�������union�������Ѿ�ɾ�����ظ�����
    all: ��ѡ���������еĽ�����������ظ�����
*/
select * from table_name where id = 1 union all select * from table_name where id = 2;


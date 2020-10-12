create table if not exists table_name (
      `id` int (11) not null auto_increment,
      primary key (`id`)
)engine=InnoDB default charset = utf8;

create table if not exists table_name1 (
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


/*
    order by �Ӿ�
    ����ʹ���κ��ֶ���Ϊ������������Ӷ����������Ľ��
    �����趨����ֶ�������
    ����ʹ��asc����desc�ؼ��������ò�ѯ����ǰ������ǽ������У�Ĭ��������ǰ�asc�������С�
*/
select * from table_name order by id desc;


/*
    group by �Ӿ�
    ����һ�������жԽ�������з��飬�ڷ�������Ͽ���ʹ��count��sum��avg�Ⱥ���
*/
select id, count(id) from table_name group by id;


/*
    ����
    ���·�Ϊ���ࣺ
        inner join ������ ��ȡ���������ֶ�ƥ���ϵ�ļ�¼
        left join ������ ��ȡ������м�¼����ʹ�ұ�û�ж�Ӧƥ��ļ�¼
        right join ������ ��ȡ�ұ����м�¼����ʹ���û�ж�Ӧƥ��ļ�¼
*/
select a.* from table_name as a inner join table_name1 as b on a.id = b.id;

/*
    limit �Ӿ�
    ����ƫ���������ƴ�С��ѯ�ض����������ݣ���ʽ��ƫ����,���ƴ�С
*/
select * from table_name limit 0,1;

/*
    �Ӳ�ѯ
    �Ӳ�ѯ����Ƕ����������ѯ�еĲ�ѯ�� ��where�Ӿ���ʹ���Ӳ�ѯ��Ӧ�ñ�֤select�����к�where�Ӿ�����ͬ��Ŀ���У�ͨ�����Ӳ�ѯ�����ص����в����뵥����ƥ�䡣
*/
select * from table_name where id in (select id from table_name1);
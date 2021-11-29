create table customer
(
    id       int          null,
    name     varchar(255) null,
    password varchar(255) null,
    phone    varchar(255) not null
        primary key
);

INSERT INTO csgl.customer (id, name, password, phone)
VALUES (1, 'zhangsan', '123456', '123456');
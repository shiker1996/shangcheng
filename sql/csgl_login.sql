create table login
(
    id       varchar(11)  null,
    phone    varchar(255) not null
        primary key,
    password varchar(255) null,
    role     varchar(255) null
);

INSERT INTO csgl.login (id, phone, password, role)
VALUES ('2', '111222', '123456', 'employee');
INSERT INTO csgl.login (id, phone, password, role)
VALUES ('1', '123456', '123456', 'customer');
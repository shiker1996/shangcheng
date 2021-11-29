create table employee
(
    name     varchar(255) null,
    id       int          null,
    position varchar(255) null,
    password varchar(255) null,
    phone    varchar(255) not null
        primary key
);

INSERT INTO csgl.employee (name, id, position, password, phone)
VALUES ('lisi', 2, 'employee', '123456', '111222');
create table tuser
(
    uno    int          not null
        primary key,
    uname  varchar(255) null,
    uage   varchar(255) null,
    usex   varchar(255) null,
    ubirth date         null
);

INSERT INTO csgl.tuser (uno, uname, uage, usex, ubirth)
VALUES (1, '123', '12', 'man', '2015-06-13');
INSERT INTO csgl.tuser (uno, uname, uage, usex, ubirth)
VALUES (2, '234', '123', '12', '2016-12-30');
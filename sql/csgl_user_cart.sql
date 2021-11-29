create table user_cart
(
    id          int auto_increment
        primary key,
    customer_id int                  null,
    goods_id    int                  null,
    goods_num   int                  null,
    is_delete   tinyint(1) default 0 not null
);

INSERT INTO csgl.user_cart (id, customer_id, goods_id, goods_num, is_delete)
VALUES (1, null, 18, 1, 0);
INSERT INTO csgl.user_cart (id, customer_id, goods_id, goods_num, is_delete)
VALUES (2, null, 18, 1, 0);
INSERT INTO csgl.user_cart (id, customer_id, goods_id, goods_num, is_delete)
VALUES (3, 1, 18, 1, 1);
INSERT INTO csgl.user_cart (id, customer_id, goods_id, goods_num, is_delete)
VALUES (4, 1, 8, 1, 1);
INSERT INTO csgl.user_cart (id, customer_id, goods_id, goods_num, is_delete)
VALUES (5, 1, 8, 1, 0);
INSERT INTO csgl.user_cart (id, customer_id, goods_id, goods_num, is_delete)
VALUES (6, 1, 8, 1, 0);
INSERT INTO csgl.user_cart (id, customer_id, goods_id, goods_num, is_delete)
VALUES (7, 1, 6, 1, 1);
INSERT INTO csgl.user_cart (id, customer_id, goods_id, goods_num, is_delete)
VALUES (8, null, 8, 1, 0);
INSERT INTO csgl.user_cart (id, customer_id, goods_id, goods_num, is_delete)
VALUES (9, null, 6, 1, 0);
INSERT INTO csgl.user_cart (id, customer_id, goods_id, goods_num, is_delete)
VALUES (10, null, 6, 1, 0);
INSERT INTO csgl.user_cart (id, customer_id, goods_id, goods_num, is_delete)
VALUES (11, 1, 6, 1, 1);
INSERT INTO csgl.user_cart (id, customer_id, goods_id, goods_num, is_delete)
VALUES (12, null, 8, 1, 0);
INSERT INTO csgl.user_cart (id, customer_id, goods_id, goods_num, is_delete)
VALUES (13, 1, 18, 1, 0);
INSERT INTO csgl.user_cart (id, customer_id, goods_id, goods_num, is_delete)
VALUES (14, 1, 8, 2, 0);
INSERT INTO csgl.user_cart (id, customer_id, goods_id, goods_num, is_delete)
VALUES (15, 1, 6, 1, 0);
INSERT INTO csgl.user_cart (id, customer_id, goods_id, goods_num, is_delete)
VALUES (16, 1, 6, 1, 0);
INSERT INTO csgl.user_cart (id, customer_id, goods_id, goods_num, is_delete)
VALUES (17, 1, 6, 1, 0);
INSERT INTO csgl.user_cart (id, customer_id, goods_id, goods_num, is_delete)
VALUES (18, 1, 6, 1, 1);
INSERT INTO csgl.user_cart (id, customer_id, goods_id, goods_num, is_delete)
VALUES (19, 1, 6, 1, 1);
INSERT INTO csgl.user_cart (id, customer_id, goods_id, goods_num, is_delete)
VALUES (20, 1, 5, 1, 0);
INSERT INTO csgl.user_cart (id, customer_id, goods_id, goods_num, is_delete)
VALUES (21, 1, 3, 1, 0);
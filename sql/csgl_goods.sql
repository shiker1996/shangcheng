create table goods
(
    name     varchar(255) null,
    onshelf  date         null,
    offshelf date         null,
    state    varchar(255) null,
    num      int          null,
    id       int auto_increment
        primary key,
    prodate  date         null,
    reldate  date         null,
    pride    varchar(255) null,
    pic_url  varchar(255) null
);

INSERT INTO csgl.goods (name, onshelf, offshelf, state, num, id, prodate, reldate, pride, pic_url)
VALUES ('矿泉水', '2017-12-05', '2017-12-19', 'good', 200, 2, '2017-12-29', '2017-12-28', '2.00',
        '6f9044c7565682b386f69314601492f.jpg');
INSERT INTO csgl.goods (name, onshelf, offshelf, state, num, id, prodate, reldate, pride, pic_url)
VALUES ('可乐', '2017-12-20', '2017-11-06', 'good', 494, 3, null, null, '2.50', '5ffc1f97094dd045da358be52261a99.jpg');
INSERT INTO csgl.goods (name, onshelf, offshelf, state, num, id, prodate, reldate, pride, pic_url)
VALUES ('香蕉', '2017-12-18', '2017-12-03', 'good', 498, 4, null, null, '5.00', '4e663bd0026829b76348fa103203284.jpg');
INSERT INTO csgl.goods (name, onshelf, offshelf, state, num, id, prodate, reldate, pride, pic_url)
VALUES ('葡萄', '2018-01-06', '2017-12-06', 'good', 500, 5, null, null, '3.00', '5d8efa575cd0a03d66e176e89b4d854.jpg');
INSERT INTO csgl.goods (name, onshelf, offshelf, state, num, id, prodate, reldate, pride, pic_url)
VALUES ('哇哈哈', '2017-12-07', null, 'good', 493, 6, '2017-12-07', '2017-12-30', '2.5',
        '040297c11a3a01d473614a60142b903.jpg');
INSERT INTO csgl.goods (name, onshelf, offshelf, state, num, id, prodate, reldate, pride, pic_url)
VALUES ('鼠标', '2017-12-12', null, 'good', 199, 7, '2017-12-04', '2017-12-31', '250',
        'b6346a23e6c6f25aa89cbb0ae7cf538.jpg');
INSERT INTO csgl.goods (name, onshelf, offshelf, state, num, id, prodate, reldate, pride, pic_url)
VALUES ('键盘', '2017-12-06', null, 'good', 9, 8, '2017-12-01', '2017-12-26', '200',
        'b232efa9ecf4e7123fde487f17cbbea.jpg');
INSERT INTO csgl.goods (name, onshelf, offshelf, state, num, id, prodate, reldate, pride, pic_url)
VALUES ('百事可乐', '2021-11-14', null, 'good', 7, 18, '2021-11-14', '2021-12-14', '3.5',
        '38a3928e4ce2e4d2e0a0486f27acd56.jpg');
INSERT INTO csgl.goods (name, onshelf, offshelf, state, num, id, prodate, reldate, pride, pic_url)
VALUES ('可口可乐', '2021-11-21', null, 'good', 100, 19, '2021-11-20', '2021-12-11', '5.00',
        '8c44c0e196f9f3d3463a7dcfec0be16.jpg');
INSERT INTO csgl.goods (name, onshelf, offshelf, state, num, id, prodate, reldate, pride, pic_url)
VALUES ('哇哈哈钙中钙', '2021-11-21', null, 'good', 50, 20, '2021-11-20', '2021-12-12', '2.50',
        'e18fbc4ff7bdf3c277d7e54e7599667.jpg');
INSERT INTO csgl.goods (name, onshelf, offshelf, state, num, id, prodate, reldate, pride, pic_url)
VALUES ('怡宝矿泉水555ml', '2021-11-21', null, 'good', 200, 21, '2021-11-20', '2022-01-21', '1.50',
        'a6b778088af2fd43377ae472d84ae0d.jpg');
INSERT INTO csgl.goods (name, onshelf, offshelf, state, num, id, prodate, reldate, pride, pic_url)
VALUES ('德芙巧克力', '2021-11-21', null, 'good', 15, 22, '2021-11-21', '2022-01-21', '100',
        '899870438b8346ad8328cfa4c91af6e.jpg');
INSERT INTO csgl.goods (name, onshelf, offshelf, state, num, id, prodate, reldate, pride, pic_url)
VALUES ('奥利奥夹心饼干', '2021-11-21', null, 'good', 50, 23, '2021-11-20', '2022-01-21', '10',
        'a73ac97244dd0e7b8cda5f2a402f5be.jpeg');
INSERT INTO csgl.goods (name, onshelf, offshelf, state, num, id, prodate, reldate, pride, pic_url)
VALUES ('棒棒糖', '2021-11-21', null, 'good', 100, 24, '2021-11-19', '2022-08-21', '0.50',
        '62ce13921e0fdd9276f8495b3efe0e4.jpg');
INSERT INTO csgl.goods (name, onshelf, offshelf, state, num, id, prodate, reldate, pride, pic_url)
VALUES ('小熊饼干', '2021-11-21', null, 'good', 25, 25, '2021-11-21', '2023-11-21', '5.00',
        '9e28602736e9896f76e446516e2e849.jpg');
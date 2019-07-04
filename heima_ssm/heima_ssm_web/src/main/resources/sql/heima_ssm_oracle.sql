create table MEMBER
(
  id       VARCHAR2(32) default SYS_GUID() not null,
  name     VARCHAR2(20),
  nickname VARCHAR2(20),
  phonenum VARCHAR2(20),
  email    VARCHAR2(20)
);
create table ORDERS
(
  id          VARCHAR2(32) default SYS_GUID() not null,
  ordernum    VARCHAR2(20) not null,
  ordertime   TIMESTAMP(6),
  peoplecount INTEGER,
  orderdesc   VARCHAR2(500),
  paytype     INTEGER,
  orderstatus INTEGER,
  productid   VARCHAR2(32),
  memberid    VARCHAR2(32)
);
create table ORDER_TRAVELLER
(
  orderid     VARCHAR2(32) not null,
  travellerid VARCHAR2(32) not null
);
create table PERMISSION
(
  id             VARCHAR2(32) default SYS_GUID() not null,
  permissionname VARCHAR2(50),
  url            VARCHAR2(50)
);
create table PRODUCT
(
  id            VARCHAR2(32) default SYS_GUID() not null,
  productnum    VARCHAR2(50) not null,
  productname   VARCHAR2(50),
  cityname      VARCHAR2(50),
  departuretime TIMESTAMP(6),
  productprice  NUMBER,
  productdesc   VARCHAR2(500),
  productstatus INTEGER
);
create table ROLE
(
  id       VARCHAR2(32) default SYS_GUID() not null,
  rolename VARCHAR2(50),
  roledesc VARCHAR2(50)
);
create table ROLE_PERMISSION
(
  permissionid VARCHAR2(32) not null,
  roleid       VARCHAR2(32) not null
);
create table SYSLOG
(
  id            VARCHAR2(32) default SYS_GUID() not null,
  visittime     TIMESTAMP(6),
  username      VARCHAR2(50),
  ip            VARCHAR2(30),
  url           VARCHAR2(50),
  executiontime INTEGER,
  method        VARCHAR2(200)
);
create table TRAVELLER
(
  id              VARCHAR2(32) default SYS_GUID() not null,
  name            VARCHAR2(20),
  sex             VARCHAR2(20),
  phonenum        VARCHAR2(20),
  credentialstype INTEGER,
  credentialsnum  VARCHAR2(50),
  travellertype   INTEGER
);
create table USERS
(
  id       VARCHAR2(32) default SYS_GUID() not null,
  email    VARCHAR2(50) not null,
  username VARCHAR2(50),
  password VARCHAR2(100),
  phonenum VARCHAR2(20),
  status   INTEGER
);
create table USERS_ROLE
(
  userid VARCHAR2(32) not null,
  roleid VARCHAR2(32) not null
);

insert into MEMBER (id, name, nickname, phonenum, email)
values ('E61D65F673D54F68B0861025C69773DB', '张三', '小三', '18888888888', 'zs@163.com');
commit;

insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('0E7231DC797C486290E8713CA3C6ECCC', '12345', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '676C5BD1D35E429A8C2E114939C5685A', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('5DC6A48DD4E94592AE904930EA866AFA', '54321', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '676C5BD1D35E429A8C2E114939C5685A', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('2FF351C4AC744E2092DCF08CFD314420', '67890', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '12B7ABF2A4C544568B0A7C69F36BF8B7', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('A0657832D93E4B10AE88A2D4B70B1A28', '98765', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '12B7ABF2A4C544568B0A7C69F36BF8B7', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('E4DD4C45EED84870ABA83574A801083E', '11111', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '12B7ABF2A4C544568B0A7C69F36BF8B7', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('96CC8BD43C734CC2ACBFF09501B4DD5D', '22222', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '12B7ABF2A4C544568B0A7C69F36BF8B7', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('55F9AF582D5A4DB28FB4EC3199385762', '33333', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '9F71F01CB448476DAFB309AA6DF9497F', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('CA005CF1BE3C4EF68F88ABC7DF30E976', '44444', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '9F71F01CB448476DAFB309AA6DF9497F', 'E61D65F673D54F68B0861025C69773DB');
insert into ORDERS (id, ordernum, ordertime, peoplecount, orderdesc, paytype, orderstatus, productid, memberid)
values ('3081770BC3984EF092D9E99760FDABDE', '55555', to_timestamp('02-03-2018 12:00:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 2, '没什么', 0, 1, '9F71F01CB448476DAFB309AA6DF9497F', 'E61D65F673D54F68B0861025C69773DB');
commit;

insert into ORDER_TRAVELLER (orderid, travellerid)
values ('0E7231DC797C486290E8713CA3C6ECCC', '3FE27DF2A4E44A6DBC5D0FE4651D3D3E');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('2FF351C4AC744E2092DCF08CFD314420', '3FE27DF2A4E44A6DBC5D0FE4651D3D3E');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('3081770BC3984EF092D9E99760FDABDE', 'EE7A71FB6945483FBF91543DBE851960');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('55F9AF582D5A4DB28FB4EC3199385762', 'EE7A71FB6945483FBF91543DBE851960');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('5DC6A48DD4E94592AE904930EA866AFA', '3FE27DF2A4E44A6DBC5D0FE4651D3D3E');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('96CC8BD43C734CC2ACBFF09501B4DD5D', 'EE7A71FB6945483FBF91543DBE851960');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('A0657832D93E4B10AE88A2D4B70B1A28', '3FE27DF2A4E44A6DBC5D0FE4651D3D3E');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('CA005CF1BE3C4EF68F88ABC7DF30E976', 'EE7A71FB6945483FBF91543DBE851960');
insert into ORDER_TRAVELLER (orderid, travellerid)
values ('E4DD4C45EED84870ABA83574A801083E', 'EE7A71FB6945483FBF91543DBE851960');
commit;

insert into PERMISSION (id, permissionname, url)
values ('B1085B6C6F0B472591A8B1D95B0918A9', '查询用户', '/user/findAll.do');
commit;

insert into PRODUCT (id, productnum, productname, cityname, departuretime, productprice, productdesc, productstatus)
values ('676C5BD1D35E429A8C2E114939C5685A', 'itcast-002', '北京三日游', '北京', to_timestamp('10-10-2018 10:10:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 1200, '不错的旅行', 1);
insert into PRODUCT (id, productnum, productname, cityname, departuretime, productprice, productdesc, productstatus)
values ('12B7ABF2A4C544568B0A7C69F36BF8B7', 'itcast-003', '上海五日游', '上海', to_timestamp('25-04-2018 14:30:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 1800, '魔都我来了', 0);
insert into PRODUCT (id, productnum, productname, cityname, departuretime, productprice, productdesc, productstatus)
values ('9F71F01CB448476DAFB309AA6DF9497F', 'itcast-001', '北京三日游', '北京', to_timestamp('10-10-2018 10:10:00.000000', 'dd-mm-yyyy hh24:mi:ss.ff'), 1200, '不错的旅行', 1);
commit;

insert into ROLE (id, rolename, roledesc)
values ('B40562699D2049759B08B464B0C0EF49', '战士', '战士战士');
insert into ROLE (id, rolename, roledesc)
values ('65F020BDB61B4A4D8ACFD42A78A55D58', '法师', '法师法师');
insert into ROLE (id, rolename, roledesc)
values ('E5C9A859F1624607B99907549F6ECACE', '刺客', '刺客刺客');
insert into ROLE (id, rolename, roledesc)
values ('7FA3B97C9AB74A0DA51637F32FDC20C9', '坦克', '坦克坦克');
insert into ROLE (id, rolename, roledesc)
values ('9FEE089E58E34603A13D85A45B026B8F', '辅助', '辅助辅助');
commit;

insert into ROLE_PERMISSION (permissionid, roleid)
values ('B1085B6C6F0B472591A8B1D95B0918A9', 'B40562699D2049759B08B464B0C0EF49');
commit;

insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('FB5701CE90974AD9AD2B7D61EC92EDD3', to_timestamp('01-06-2019 22:07:41.214000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'aaa', '0:0:0:0:0:0:0:1', '/role/findAll.do', 14, '[类名] com.itheima.ssm.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('717401BAA97243D2B533A6C392A2242D', to_timestamp('01-06-2019 22:08:22.515000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'aaa', '0:0:0:0:0:0:0:1', '/role/findAll.do', 11, '[类名] com.itheima.ssm.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('A72BA4366C1A40A4B0FB24C5E55088E1', to_timestamp('01-06-2019 22:08:22.803000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'aaa', '0:0:0:0:0:0:0:1', '/role/findAll.do', 12, '[类名] com.itheima.ssm.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('1F1979C8523542F384170CC11CB409DF', to_timestamp('01-06-2019 22:08:36.474000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'aaa', '0:0:0:0:0:0:0:1', '/role/findAll.do', 9, '[类名] com.itheima.ssm.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('B94EB5F601A54993BA1402CC3CBA40F2', to_timestamp('01-06-2019 22:08:47.959000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'aaa', '0:0:0:0:0:0:0:1', '/product/findAll.do', 83, '[类名] com.itheima.ssm.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('E712C1DD43B24F53ABCECC9AAC5693F1', to_timestamp('01-06-2019 22:09:50.714000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'aaa', '0:0:0:0:0:0:0:1', '/role/findAll.do', 8, '[类名] com.itheima.ssm.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('D7040974E6A94EC19A82DFEE0D87A4B4', to_timestamp('01-06-2019 22:10:00.918000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'aaa', '0:0:0:0:0:0:0:1', '/role/findAll.do', 17, '[类名] com.itheima.ssm.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('5777103A770940E0BB5084639DAEF1EE', to_timestamp('01-06-2019 22:10:04.853000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'aaa', '0:0:0:0:0:0:0:1', '/role/findAll.do', 13, '[类名] com.itheima.ssm.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('7F1066A68C3D4C34A03C387FFA68E116', to_timestamp('01-06-2019 22:11:42.659000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'aaa', '0:0:0:0:0:0:0:1', '/product/findAll.do', 9, '[类名] com.itheima.ssm.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('A08458F439E846FC877FF746DE96E2BB', to_timestamp('01-06-2019 22:13:04.773000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'aaa', '0:0:0:0:0:0:0:1', '/role/findAll.do', 6, '[类名] com.itheima.ssm.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('6EA39C10209A443AB52A29DC0710222F', to_timestamp('01-06-2019 22:13:25.087000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'aaa', '0:0:0:0:0:0:0:1', '/role/findAll.do', 14, '[类名] com.itheima.ssm.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('EDD42F9A90E9402B83AFAD86F19EB87C', to_timestamp('01-06-2019 22:13:41.900000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'aaa', '0:0:0:0:0:0:0:1', '/product/findAll.do', 18, '[类名] com.itheima.ssm.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('BB16735C74BC46F8BA1538D276886F0B', to_timestamp('01-06-2019 22:13:51.362000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'aaa', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 27, '[类名] com.itheima.ssm.controller.SysLogController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('03EB57B9F5514534B99671DB9145D78F', to_timestamp('01-06-2019 22:16:29.311000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'aaa', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 19, '[类名] com.itheima.ssm.controller.SysLogController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('E8586D4E597246C49D3BC5A15ED5BB87', to_timestamp('01-06-2019 22:18:15.404000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'aaa', '0:0:0:0:0:0:0:1', '/role/findAll.do', 7, '[类名] com.itheima.ssm.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('7153E41FE31441A9B4505C31772A7A15', to_timestamp('01-06-2019 22:08:29.034000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'aaa', '0:0:0:0:0:0:0:1', '/role/findAll.do', 53, '[类名] com.itheima.ssm.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('58BC196FEA42464DB0B4C8BC57295CA6', to_timestamp('01-06-2019 22:08:39.510000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'aaa', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 88, '[类名] com.itheima.ssm.controller.SysLogController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('BA3DF6DFFA4F49FFB84317DB9513DE6A', to_timestamp('01-06-2019 22:09:26.548000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'aaa', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 241, '[类名] com.itheima.ssm.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('26B16D34CC1F451CA3EE306E87399B9B', to_timestamp('01-06-2019 22:09:37.830000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'aaa', '0:0:0:0:0:0:0:1', '/orders/findAll.do', 96, '[类名] com.itheima.ssm.controller.OrdersController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('7A60B2E2D71C44C396BCA46DAC79D323', to_timestamp('01-06-2019 22:12:19.351000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'aaa', '0:0:0:0:0:0:0:1', '/product/findAll.do', 18, '[类名] com.itheima.ssm.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('A0E8CA45A5584C6A941D9D2789FAE141', to_timestamp('01-06-2019 22:12:24.005000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'aaa', '0:0:0:0:0:0:0:1', '/role/findAll.do', 15, '[类名] com.itheima.ssm.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('1BA4A0C94FB44583A005FFC13760843C', to_timestamp('01-06-2019 22:13:11.338000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'aaa', '0:0:0:0:0:0:0:1', '/role/findAll.do', 15, '[类名] com.itheima.ssm.controller.RoleController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('C0B8B794F2CE4DACAF0B2BF7BAFCC73B', to_timestamp('01-06-2019 22:13:14.242000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'aaa', '0:0:0:0:0:0:0:1', '/product/findAll.do', 13, '[类名] com.itheima.ssm.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('BFBEDAA696014B859A7D82D2475E3841', to_timestamp('01-06-2019 22:13:29.193000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'aaa', '0:0:0:0:0:0:0:1', '/product/findAll.do', 9, '[类名] com.itheima.ssm.controller.ProductController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('DC285CCF9DC0449F83D37C4D46D82CA2', to_timestamp('01-06-2019 22:13:56.566000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'aaa', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 13, '[类名] com.itheima.ssm.controller.SysLogController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('ABB93429765348678D30F92B855C6837', to_timestamp('01-06-2019 22:16:36.503000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'aaa', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 19, '[类名] com.itheima.ssm.controller.SysLogController[方法名] findAll');
insert into SYSLOG (id, visittime, username, ip, url, executiontime, method)
values ('31ED2DDF82634037B7EE790C7B1187F1', to_timestamp('01-06-2019 22:17:52.357000', 'dd-mm-yyyy hh24:mi:ss.ff'), 'aaa', '0:0:0:0:0:0:0:1', '/sysLog/findAll.do', 19, '[类名] com.itheima.ssm.controller.SysLogController[方法名] findAll');
commit;

insert into TRAVELLER (id, name, sex, phonenum, credentialstype, credentialsnum, travellertype)
values ('3FE27DF2A4E44A6DBC5D0FE4651D3D3E', '张龙', '男', '13333333333', 0, '123456789009876543', 0);
insert into TRAVELLER (id, name, sex, phonenum, credentialstype, credentialsnum, travellertype)
values ('EE7A71FB6945483FBF91543DBE851960', '张小龙', '男', '15555555555', 0, '987654321123456789', 1);
commit;

insert into USERS (id, email, username, password, phonenum, status)
values ('BF73624542E9411B801F2AC1DED52E8D', '18890234512@163.com', '庄周', '$2a$10$C4/5.iXLy4GRNe0fzUv/f.XpotcXWaAQMFir2WafbEdoSsSLTJyV6', '18890234512', 1);
insert into USERS (id, email, username, password, phonenum, status)
values ('F8A7A1C1DAFD45C8906BC042B206B132', '18965459023@163.com', '孙悟空', '$2a$10$KLh0ywD5xmmqSLLXNkKfIOPaejTT2WRd9jQYzWEIv.bjs6B7j.LaO', '18965459023', 1);
insert into USERS (id, email, username, password, phonenum, status)
values ('46F8CC8305354A93B40DA898F6BBECE5', '18843093216@163.com', '程咬金', '$2a$10$ARBJqgfqX7QJZzgxJx0GfueyKglhoIMQIfrBU0WC1EgULSgpzk66i', '18843093216', 1);
insert into USERS (id, email, username, password, phonenum, status)
values ('DD719334F24C4C4FA647FCDCFACD6BA2', 'admin@163.com', 'admin', '$2a$10$tpbfsmoPlYC82Vk4Pv9fxO6YSa0LMbMb8Uju.Juo1k6XDEfmOb55O', 'admin', 1);
insert into USERS (id, email, username, password, phonenum, status)
values ('BDC95679C40D4A23AF05D7B36A880F91', '18934210976@163.com', '张良', '$2a$10$kggu6gh4V3PCYj5HoxW0ee92mUrb9gZtoEEpyq0y1Q6PQlJk54zUe', '18934210976', 1);
insert into USERS (id, email, username, password, phonenum, status)
values ('E314B74AC5974B06AD13C734689128DE', '13534512097@163.com', '典韦', '$2a$10$mHmg9vUnHHoa7BmwJVZK1O6jNLeGbeBw/w/a9OeRxaq.iFMRcz4fC', '13534512097', 1);
insert into USERS (id, email, username, password, phonenum, status)
values ('744364E087E246B1BCAFE08778712229', '18823560912@163.com', '李白', '$2a$10$lnuCM1GorHsfqaiduIUGGeUHAmeAlegeegllLlkDUeqHkqPdWmRXm', '18823560912', 1);
insert into USERS (id, email, username, password, phonenum, status)
values ('3B25D9E58D7A4176A6498D24389E0ECA', '18967092313@163.com', '孙策', '$2a$10$SSsu4z55UHUKGFps.XRYNuaduev2ugfQ4WvK2ZetWlJ9KPSM.5Z5.', '18967092313', 1);
insert into USERS (id, email, username, password, phonenum, status)
values ('454620A66C684AC9BC4DBF6F0CBD5257', '18609991222@163.com', '亚瑟', '$2a$10$zBRWPRE03ufZ8K9.XqXvtO/eDOMCG8vw6lM6Qk2MMRjNVQUT9gIuq', '18609991222', 1);
commit;

insert into USERS_ROLE (userid, roleid)
values ('46F8CC8305354A93B40DA898F6BBECE5', '7FA3B97C9AB74A0DA51637F32FDC20C9');
insert into USERS_ROLE (userid, roleid)
values ('46F8CC8305354A93B40DA898F6BBECE5', 'B40562699D2049759B08B464B0C0EF49');
insert into USERS_ROLE (userid, roleid)
values ('BDC95679C40D4A23AF05D7B36A880F91', '65F020BDB61B4A4D8ACFD42A78A55D58');
insert into USERS_ROLE (userid, roleid)
values ('BF73624542E9411B801F2AC1DED52E8D', '7FA3B97C9AB74A0DA51637F32FDC20C9');
insert into USERS_ROLE (userid, roleid)
values ('BF73624542E9411B801F2AC1DED52E8D', '9FEE089E58E34603A13D85A45B026B8F');
insert into USERS_ROLE (userid, roleid)
values ('DD719334F24C4C4FA647FCDCFACD6BA2', '65F020BDB61B4A4D8ACFD42A78A55D58');
insert into USERS_ROLE (userid, roleid)
values ('DD719334F24C4C4FA647FCDCFACD6BA2', '7FA3B97C9AB74A0DA51637F32FDC20C9');
insert into USERS_ROLE (userid, roleid)
values ('DD719334F24C4C4FA647FCDCFACD6BA2', '9FEE089E58E34603A13D85A45B026B8F');
insert into USERS_ROLE (userid, roleid)
values ('DD719334F24C4C4FA647FCDCFACD6BA2', 'B40562699D2049759B08B464B0C0EF49');
insert into USERS_ROLE (userid, roleid)
values ('DD719334F24C4C4FA647FCDCFACD6BA2', 'E5C9A859F1624607B99907549F6ECACE');
insert into USERS_ROLE (userid, roleid)
values ('E314B74AC5974B06AD13C734689128DE', '7FA3B97C9AB74A0DA51637F32FDC20C9');
insert into USERS_ROLE (userid, roleid)
values ('E314B74AC5974B06AD13C734689128DE', 'B40562699D2049759B08B464B0C0EF49');
insert into USERS_ROLE (userid, roleid)
values ('F8A7A1C1DAFD45C8906BC042B206B132', 'B40562699D2049759B08B464B0C0EF49');
insert into USERS_ROLE (userid, roleid)
values ('F8A7A1C1DAFD45C8906BC042B206B132', 'E5C9A859F1624607B99907549F6ECACE');
commit;

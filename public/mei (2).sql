SET NAMES UTF8;
CREATE DATABASE mei CHARSET=UTF8;
USE mei;
#用户信息
CREATE TABLE mei_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(8),
  upwd VARCHAR(32),
  email VARCHAR(64),
  phone CHAR(11),
  avatar VARCHAR(128),        #头像图片路径
  user_name VARCHAR(32),      #用户名,如王小明
  gender BOOLEAN             #性别  0-女  1-男             
);
INSERT INTO mei_user VALUES(1,'dongdong','123456','dongdong@qq.com','15588555466','img/user.png','冬冬',1);
INSERT INTO mei_user VALUES(2,'dingding','123456','dingding@qq.com','15588333466','img/user.png','丁丁',1);
INSERT INTO mei_user VALUES(3,'dangdang','123456','daangdang@qq.com','15588677866','img/user.png','当当',1);
INSERT INTO mei_user VALUES(4,'mike','123456','mike@qq.com','15588222366','img/user.png','米克',0);
INSERT INTO mei_user VALUES(5,'jack','123456','jack@qq.com','15588876456','img/user.png','杰克',1);
INSERT INTO mei_user VALUES(6,'congcong','123456','congcong@qq.com','15588876566','img/user.png','聪聪',0);
INSERT INTO mei_user VALUES(7,'lili','123456','lili@qq.com','15588886666','img/user.png','丽丽',1);
INSERT INTO mei_user VALUES(8,'tom','123456','tom@qq.com','15588886666','img/user.png','汤姆',1);
INSERT INTO mei_user VALUES(9,'yaya','123456','yaya@qq.com','15588886666','img/user.png','丫丫',0);
INSERT INTO mei_user VALUES(10,'rose','123456','rose@qq.com','15588886666','img/user.png','玫瑰',0);
INSERT INTO mei_user VALUES(11,'liming','123456','liming@qq.com','15586753666','img/user.png','李明',1);
INSERT INTO mei_user VALUES(12,'lisu','123456','lisu@qq.com','15588456766','img/user.png','李素',1);
INSERT INTO mei_user VALUES(13,'xiaodi','123456','xiaodi@qq.com','15588098766','img/user.png','小迪',1);
INSERT INTO mei_user VALUES(14,'jerry','123456','jerry@qq.com','15582365766','img/user.png','杰瑞',0);
INSERT INTO mei_user VALUES(15,'xiaoxiao','12345','xiaoxiao@qq.com',15576543332,'img/user.png','晓晓',0);

/****首页轮播广告商品****/
CREATE TABLE mei_index_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  title VARCHAR(64),
  href VARCHAR(128)
);

/****首页轮播广告商品****/
INSERT INTO mei_index_carousel VALUES
(NULL, 'img/index/carousel/Cgbj0FtgARmARFjcAAHzVKRNmn8146.jpg','轮播广告商品1','index.html'),
(NULL, 'img/index/carousel/Cgbj0FtpXX2AJqseAAaoNVAmd4E240.jpg','轮播广告商品2','index.html'),
(NULL, 'img/index/carousel/Cgbj0FttW_KARzfYAAMsdTBzx9E623.jpg','轮播广告商品3','index.html'),
(NULL, 'img/index/carousel/Cgbj0Vtz2f-ATdukAAhxMFt_-NQ231.jpg','轮播广告商品4','index.html'),
(NULL, 'img/index/carousel/Cgbj0VuGenGAUVI2AAUrOvFZAKI651.jpg','轮播广告商品5','index.html');
#首页商品
CREATE TABLE mei_index_products(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  details VARCHAR(128),
  pic VARCHAR(128),
  price DECIMAL(10,2),
  href VARCHAR(128),
  seq_recommended TINYINT
              
);
INSERT INTO mei_index_products VALUES
(NULL, '魅族15', '2000万暗光双摄 AI智能美颜', 'img/index/pic/Cgbj0FrcblSAGHrPAAvT_qZZSA0427.png', 1998, 'phone_details.html?lid=1', 1),
(NULL, '魅族 M15', '支持人脸识别 抬腕即解锁', 'img/index/pic/1d90acfd-bdc6-4253-89c9-21608b08df8b.jpg', 1398, 'phone_details.html?lid=2', 2),
(NULL, '魅蓝 E3', '玩的畅快 拍的清晰', 'img/index/pic/Cgbj0Vq9-oeARs_XAALvUdl5qpo302.png', 1799, 'phone_details.html?lid=3', 3),
(NULL, '魅族 16th plus', '骁龙845 屏下指纹', 'img/index/pic/Cgbj0FtqgkWALkhxAAkE5Uiy2no917.png', 3198, 'phone_details.html?lid=4', 4),
(NULL, '魅蓝 6T', '定制全屏 人机交互新体验', 'img/index/pic/Cgbj0VsM-kuAGYZmAAm_NQr8nSk674.png', 799, 'phone_details.html?lid=5', 5),
(NULL, '魅蓝 S6', '领券立减50', 'img/index/pic/Cgbj0Fpe-_yAFtuLAAw27mVWra0383.png', 999, 'phone_details.html?lid=6', 6),


(NULL, '魅族 EP2X耳机', '契合声音的流动直之美', 'img/index/pic/Cix_s1gcVpeAOmoaAAGh-ubroNg891.png', 69, 'phone_details.html?lid=7', 7),
(NULL, '魅蓝EP52蓝牙耳机', '新品到货 限量抢购', 'img/index/pic/Cgbj0Vn2f8mAcov7AAHUhmjUdk0958.png', 199, 'phone_details.html?lid=8', 8),
(NULL, '魅蓝 HD50头戴式耳机', '清新简洁', 'img/index/pic/1453355333-13100.png',299, 'phone_details.html?lid=9', 9),
(NULL, '魅族 FlowBass三单元耳机', '用的惬意 听得尽兴', 'img/index/pic/Cgbj0FpeqUqAYAbBAAJRQlEIMmc702.png', 499, 'phone_details.html?lid=10', 10),
(NULL, '魅族 EP51 蓝牙运动耳机', '自在运动', 'img/index/pic/1465810220-14607.png', 229, 'phone_details.html?lid=11', 11),
(NULL, '魅族 LIVE 四单元动铁耳机', '享12期免息', 'img/index/pic/Cgbj0FpeqaKAYLSmAATXqR4BPH8829.png', 1099, 'phone_details.html?lid=12',12),
(NULL, '魅蓝HALO激光耳机', '契合声音的流动直之美', 'img/index/pic/d7eb2087-cfca-4733-9aa4-0fe165d6f43b.jpg', 999, 'product_headset.html?lid=1', 13),
(NULL, 'POP真无线蓝牙耳机', '新品到货 限量抢购', 'img/index/pic/a23c59d9-c61c-452f-bd1d-4d29e9e045bb.jpg', 499, 'product_headset.html?lid=2', 14),

(NULL, '魅族蓝牙音频接收器', '适用机型种类多', 'img/index/pic/Cgbj0VuZwuGAUc9zAAIBeR5SbOs846.png', 89, 'phone_details.html?lid=15', 15),
(NULL, '魅蓝Type-C 金属数据线', '快充电源适配器', 'img/index/pic/CnQOjVef_HaAaD-bAAHXId4TWtA165.png', 39, 'phone_details.html?lid=16', 16),
(NULL, '魅族手环', '腕间流动的心率专家', 'img/index/pic/Cix_s1hGFveAE3RcAAOqzSlfPuA022.png', 169, 'phone_details.html?lid=17', 17),
(NULL, '魅蓝 16thPlus亲肤保护壳', '支持2A快速充电', 'img/index/pic/Cgbj0Ft7iV6AQANcAAL00J0tbyQ152.png', 29, 'phone_details.html?lid=18', 18),
(NULL, '魅族智能路由器', '广泛兼容', 'img/index/pic/1449647645-31973.png', 69, 'phone_details.html?lid=19', 19),
(NULL, '魅族路由器 极速版', '经久耐用', 'img/index/pic/1465698264-58364.jpg', 69, 'phone_details.html?lid=20', 20),
(NULL, '魅族16th保护膜', '广泛兼容', 'img/index/pic/35c143de-5b05-4e2c-87d6-9373bede4831.jpg', 19, 'phone_details.html?lid=21', 21),
(NULL, '魅族无线充电器', '经久耐用', 'img/index/pic/777b95d1-d9cb-45d8-bcc4-987e71294263.jpg', 69, 'phone_details.html?lid=22', 22),

(NULL, '魅蓝旅行包', '轻盈重负', 'img/index/pic/Cgbj0VlZqvaAGb0QAAUD7V55-H8213.png', 134, 'phone_details.html?lid=23', 23),
(NULL, '魅蓝数码收纳包', '随身收纳', 'img/index/pic/Cgbj0Vmnd4mANqFvAAYQNPMfK1w252.png', 29, 'phone_details.html?lid=24', 24),
(NULL, '魅蓝20寸旅行箱MA萌定制版', '好音感', 'img/index/pic/Cgbj0FqwvJWAFb0PAAleBEBSg7E656.png', 349, 'phone_details.html?lid=25', 25),
(NULL, '魅族蓝牙自拍杆', '还给你自由的双手', 'img/index/pic/Cix_s1iW3W-AKGlWAAIXT7S3bdY622.png', 49, 'phone_details.html?lid=26', 26),
(NULL, '魅族盒子 一键找回遥控器', '一键找回遥控器', 'img/index/pic/CnQOjVgYZV6Af6VlAADvhkEyt98979.png', 99, 'phone_details.html?lid=27', 27),
(NULL, '魅族路由器 极速版', '天生不凡', 'img/index/pic/1465698264-58364.jpg', 69, 'phone_details.html?lid=28', 28),
(NULL, '智能', '广泛兼容', 'img/index/pic/e5f3d8d2-a418-4ee6-bc21-bf4f7c5a317a.jpg', 69, 'phone_details.html?lid=29', 29),
(NULL, '魅族', '经久耐用', 'img/index/pic/3984f804-c7e0-4267-b8a4-9e70216960aa.jpg', 69, 'phone_details.html?lid=30', 30);

CREATE TABLE mei_product_life(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  details VARCHAR(128),
  pic VARCHAR(128),
  price DECIMAL(10,2),
  href VARCHAR(128),
  seq_top_sale TINYINT              
);
INSERT INTO mei_product_life VALUES
(NULL, '苏泊尔玻璃电热水壶', '高硼硅玻璃', 'img/product/md/Cgbj0FsrJZqAJ1o3AAUnq6SSHLs891.png@240x240.jpg', 199, 'product_life.html?lid=1', 1),
(NULL, '魅蓝数码收纳包', '随身收纳', 'img/product/md/Cgbj0Vmnd4mANqFvAAYQNPMfK1w252.png@240x240.jpg', 59, 'product_life.html?lid=2', 2),
(NULL, '苏泊尔不锈钢保温电水壶', '英国进口控温', 'img/product/md/Cgbj0FsXw72ATb9xAAJonJT5d5w606.png@240x240.jpg', 129, 'product_life.html?lid=3', 3),
(NULL, '魅蓝20寸旅行箱酷萌定制版', '静音双排万向轮设计', 'img/product/md/Cgbj0FqwvJWAFb0PAAleBEBSg7E656.png@240x240.jpg', 349, 'product_life.html?lid=4', 4),
(NULL, '乐游系列 酷萌定制版', '萌友为伴', 'img/product/md/Cgbj0Vqwv3SAKEs9AAeZO9uMlbg447.png@240x240.jpg', 599, 'product_life.html?lid=5', 5),
(NULL, '防蓝光电脑手机护目镜', '超轻材质', 'img/product/md/Cgbj0Fsjk12AV5s-AAEP6gxOaBc648.png@240x240.jpg', 59, 'product_life.html?lid=6', 6),

(NULL, '谷的家时间胶囊杯套装', '小巧易携带', 'img/product/md/Cgbj0Vsx5XqAI5YoAAKvWervXlw572.png@240x240.jpg', 118, 'product_life.html?lid=7', 7),
(NULL, '佐敦朱迪 时尚三件套', '优质不锈钢', 'img/product/md/Cgbj0Vmnd4mANqFvAAYQNPMfK1w252.png@240x240.jpg', 29.9, 'product_life.html?lid=8', 8),
(NULL, '佐敦朱迪 洗漱包', '优质尼龙面料', 'img/product/md/Cgbj0Vq923uAVbEBAAn6tH3SzhU560.jpg@240x240.jpg', 30.5, 'product_life.html?lid=9', 9),
(NULL, '多功能颈枕', '亲肤面料', 'img/product/md/Cgbj0VnJ90eAKFSrAAIrModLQEA779.png@240x240.jpg', 69, 'product_life.html?lid=10', 10),
(NULL, '魅蓝胸包', '时尚个性', 'img/product/md/Cgbj0Fn6yW6AAx4RAAVoxZkIpog184.png@240x240.jpg', 119, 'product_life.html?lid=11', 11),
(NULL, '魅蓝旅行双肩包', '曲面一体式', 'img/product/md/Cix_s1g7l-yANQsqAAJSWz441uE109.jpg@240x240.jpg', 199, 'product_life.html?lid=12', 12),

(NULL, '魅蓝旅行包', '高硼硅', 'img/product/md/Cgbj0VlZqvaAGb0QAAUD7V55-H8213.png@240x240.jpg', 199, 'product_life.html?lid=13', 13),
(NULL, '经典飞行员偏光太阳镜', '随身收纳', 'img/product/md/Cgbj0VtFfUWABckeAAFftlAHFk4094.png@240x240.jpg', 59, 'product_life.html?lid=14', 14),
(NULL, '佐敦朱迪便携折叠箱', '英国进口控温', 'img/product/md/Cgbj0FrLDNuAcH7fAAEYxXaxyCg883.jpg@240x240.jpg', 129, 'product_life.html?lid=15', 15),
(NULL, '佐敦朱迪便携折叠箱', '静音设计', 'img/product/md/Cgbj0FrLDNuAcH7fAAEYxXaxyCg883.jpg@240x240.jpg', 349, 'product_life.html?lid=16',16),
(NULL, '飞科充电式剃去毛球器', '萌友为伴', 'img/product/md/Cgbj0Vr-eS6AdosNAAJpXqeUynM251.jpg@240x240.jpg', 599, 'product_life.html?lid=17', 17),
(NULL, '磨砂防蓝光手机电脑护目镜', '超轻材质', 'img/product/md/Cgbj0VtyifGAaX-iAAFnixqaJVM736.png@240x240.jpg', 59, 'product_life.html?lid=18', 18),

(NULL, '天然乳胶枕', '高硼硅', 'img/product/md/Cgbj0VnltJyABZkkAAKLcjNaHa4278.png@240x240.jpg', 199, 'product_life.html?lid=19', 19),
(NULL, '捷果黑胶晴雨两用折叠伞', '随身收纳', 'img/product/md/Cgbj0Ftw-pqAT7P9AAaBHpkM4e4237.png@240x240.jpg', 59, 'product_life.html?lid=20', 20),
(NULL, '苏泊尔玻璃电热水壶', '英国进口控温', 'img/product/md/Cgbj0Ft2bCiAUbuCAAFwlE9Dgfs739.png@240x240.jpg', 129, 'product_life.html?lid=21', 21),
(NULL, '乐基因 经典广口运动太空杯', '静音设计', 'img/product/md/Cgbj0VnprgiADZd9AAQHUd6m_0g685.png@240x240.jpg', 349, 'product_life.html?lid=22', 22),
(NULL, '谷的家小鱼杯', '萌友为伴', 'img/product/md/Cgbj0Vsx-FaAbLTzAAVf9JVOOrc497.png@240x240.jpg', 599, 'product_life.html?lid=23', 23),
(NULL, '谷的家分享马克杯', '超轻材质', 'img/product/md/Cgbj0Vsx84qAFg12AARBFTOkQhY251.png@240x240.jpg', 39, 'product_life.html?lid=24', 24);

CREATE TABLE mei_product_zn(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  details VARCHAR(128),
  pic VARCHAR(128),
  price DECIMAL(10,2),
  href VARCHAR(128),
  seq_new_arrival TINYINT              
);
INSERT INTO mei_product_zn VALUES
(NULL, '千幻五代3D眼镜', '轻盈小巧 独立调节', 'img/product/md/Cgbj0VnkLq6AfFOKAAJQBeOCKN4833.png@240x240.jpg', 199, 'product_zn.html?lid=1', 1),
(NULL, '千幻魔镜6代3DVR眼镜', '随身收纳', 'img/product/md/Cgbj0Fo8q_KASW7gAAWKxzRcx00444.png@240x240.jpg', 59, 'product_zzn.html?lid=2', 2),
(NULL, '千幻一代VR眼镜', '英国进口', 'img/product/md/Cgbj0Fn24uKARK84AAHDlReZO0E149.png@240x240.jpg', 129, 'product_zn.html?lid=3', 3),
(NULL, '千幻魔镜6代3DVR眼镜', '轻盈小巧 独立调节', 'img/product/md/Cgbj0Fo8q_KASW7gAAWKxzRcx00444.png@240x240.jpg', 349, 'product_zn.html?lid=4', 4),
(NULL, '千幻一代VR眼镜', '萌友为伴', 'img/product/md/Cgbj0Fn24uKARK84AAHDlReZO0E149.png@240x240.jpg', 599, 'product_zn.html?lid=5', 5),
(NULL, '千幻五代3D眼镜 拼团专享', '超轻材质', 'img/product/md/Cgbj0VnkLq6AfFOKAAJQBeOCKN4833.png@240x240.jpg', 59, 'product_zn.html?lid=6', 6),

(NULL, '千幻五代3D眼镜', '小巧易携带', 'img/product/md/Cgbj0VnkLq6AfFOKAAJQBeOCKN4833.png@240x240.jpg', 118, 'product_zn.html?lid=7', 7),
(NULL, '乐心手环 大麦版', '腕间流动的心率专家', 'img/product/md/Cgbj0VmTwdWAMmW6AAMyqBgKIls907.png@240x240.jpg', 29.9, 'product_zn.html?lid=8', 8),
(NULL, '乐心心率监测运动手环', '腕间流动的心率专家', 'img/product/md/Cgbj0VuDZnyAEwngAALcrH-yZlM801.png@240x240.jpg', 30.5, 'product_zn.html?lid=9', 9),
(NULL, '乐心心率手环', '腕间流动的心率专家', 'img/product/md/Cgbj0FnEalWAMLPNAADPEBg_NbM155.jpg@240x240.jpg', 69, 'product_zn.html?lid=10', 10),
(NULL, '乐心手环3', '时尚个性', 'img/product/md/Cgbj0Vt2P-KAAw4lAAJ8B1RqXao911.png@240x240.jpg', 119, 'product_zn.html?lid=11', 11),
(NULL, '乐心测心率手表', '曲面一体式', 'img/product/md/Cgbj0Fr6tNqAANlwAACQsen19Dw998.jpg@240x240.jpg', 199, 'product_zn.html?lid=12', 12),

(NULL, '魔镜3DVR眼镜', '轻盈小巧 独立调节', 'img/product/md/Cgbj0VufaXuALaTYAARLFiLQiPs358.png@240x240.jpg', 199, 'product_zn.html?lid=13', 13),
(NULL, '智能3D虚拟现实头盔', '随身收纳', 'img/product/md/Cgbj0VugXxqAJ24WAAIA389ohK8699.png@240x240.jpg', 59, 'product_zn.html?lid=14', 14),
(NULL, '乐心运动手环', '腕间流动的心率专家', 'img/product/md/Cgbj0VmWkn6AST99AAUcwpZ8-fk014.png@240x240.jpg', 129, 'product_zn.html?lid=15', 15),
(NULL, '三星Gear Fit手环', '腕间流动的心率专家', 'img/product/md/Cgbj0Vt2QFOAeJkIAAMHlEx9fnI129.png@240x240.jpg', 349, 'product_zn.html?lid=16',16),
(NULL, '博思尼720度全景相机', '萌友为伴', 'img/product/md/Cgbj0Vn22eOAZNSIAAItj6RrTCw316.png@240x240.jpg', 599, 'product_zn.html?lid=17', 17),
(NULL, '博思尼E8微纤维盒子', '超轻材质', 'img/product/md/Cgbj0VoT-TiAWydeAAb7yhuiN2w996.png@240x240.jpg', 59, 'product_zn.html?lid=18', 18),

(NULL, 'S7体脂秤', '轻盈小巧 独立调节', 'img/product/md/Cgbj0VugzwSAGX6tAAPttt5bYM0474.png@240x240.jpg', 199, 'product_zn.html?lid=19', 19),
(NULL, '博思尼E6VR眼镜', '随身收纳', 'img/product/md/Cgbj0VrEjjqAfc6rAAaC9x6mEWc844.png@240x240.jpg', 59, 'product_zn.html?lid=20', 20),
(NULL, '乐心触控大屏', '英国进口', 'img/product/md/1463048547-34949.png@240x240.jpg', 129, 'product_zn.html?lid=21', 21),
(NULL, '乐心运动手环HR', '腕间流动的心率专家', 'img/product/md/1463117434-82105.png@240x240.jpg', 349, 'product_zn.html?lid=22', 22),
(NULL, '博思尼VR一体机', '萌友为伴', 'img/product/md/Cgbj0VuHzHmAfraHAAK_y49GwvE912.png@240x240.jpg', 599, 'product_zn.html?lid=23', 23),
(NULL, '爱奇艺VR眼镜', '超轻材质', 'img/product/md/Cgbj0VuHThuAVjNoAAGZIFYvdA0757.png@240x240.jpg', 39, 'product_zn.html?lid=24', 24);

CREATE TABLE mei_product_phone(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  details VARCHAR(128),
  pic VARCHAR(128),
  price DECIMAL(10,2),
  href VARCHAR(128),
  seq_top_sale TINYINT              
);
INSERT INTO mei_product_phone VALUES
(NULL, '魅族  16th', '2000万暗光双摄 AI智能美颜', 'img/product/md/Cgbj0FtqgnmAFgJPAAhgnScaoFg724.png@240x240.jpg', 3198, 'product_phone.html?lid=1', 1),
(NULL, '魅族 16th plus', '2000万暗光双摄 AI智能美颜', 'img/product/md/Cgbj0FtqgkWALkhxAAkE5Uiy2no917.png@240x240.jpg', 2698, 'product_phone.html?lid=2', 2),
(NULL, '魅族 15', '2000万暗光双摄 AI智能美颜', 'img/product/md/Cgbj0VrcbmKALZ1BAA0NVqTeXpU942.png@240x240.jpg', 1998, 'product_phone.html?lid=3', 3),
(NULL, '魅族 15 plus', '2000万暗光双摄 AI智能美颜', 'img/product/md/Cgbj0FrcbsCANuv_AAzufmGf2yU449.png@240x240.jpg', 2498, 'product_phone.html?lid=4', 4),
(NULL, '魅族 M15', '2000万暗光双摄 AI智能美颜', 'img/product/md/Cgbj0Fs8gimACX8QAAM3XnW4oOY310.png@240x240.jpg', 1398, 'product_phone.html?lid=5', 5),
(NULL, '魅蓝 6T', '2000万暗光双摄 AI智能美颜', 'img/product/md/Cgbj0VsM-iyAAgTIAAbXIwKFVL4647.png@240x240.jpg', 799, 'product_phone.html?lid=6', 6),

(NULL, '魅蓝 E3', '2000万暗光双摄 AI智能美颜', 'img/product/md/Cgbj0Vq9-m2AJr_PAAp1B7CA5GY057.png@240x240.jpg', 1799, 'product_phone.html?lid=7', 7),
(NULL, '魅蓝 S6', '2000万暗光双摄 AI智能美颜', 'img/product/md/Cgbj0Fpe_A6AZLYIAAwckbZIp2U942.png@240x240.jpg', 999, 'product_phone.html?lid=8', 8),
(NULL, '魅蓝 6', '2000万暗光双摄 AI智能美颜', 'img/product/md/Cgbj0FnCGzOABMFZAAq4uv7SLg8039.png@240x240.jpg', 599, 'product_phone.html?lid=9', 9),
(NULL, '魅蓝 Note6', '2000万暗光双摄 AI智能美颜', 'img/product/md/Cgbj0VmtGa6AThj0AA1hVmco7-o197.png@240x240.jpg',899, 'product_phone.html?lid=10', 10),
(NULL, '魅族 PRO 7 Plus', '时尚个性', 'img/product/md/Cgbj0Fl4OduAN6lZAAoYW04sCAc119.png@240x240.jpg', 1799, 'product_phone.html?lid=11', 11);

CREATE TABLE mei_product_headset(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(64),
  details VARCHAR(128),
  pic VARCHAR(128),
  price DECIMAL(10,2),
  href VARCHAR(128),
  seq_recommended TINYINT              
);
INSERT INTO mei_product_headset VALUES
(NULL, '魅蓝HALO激光耳机', '用的惬意 听得尽兴', 'img/product/md/Cgbj0VrcX6yABHxPAARZwWUAjc4748.png@240x240.jpg', 199, 'product_headset.html?lid=1', 1),
(NULL, 'POP真无线蓝牙耳机', '用的惬意 听得尽兴', 'img/product/md/Cgbj0Fsp-8yATCDFAASWKnb1fdQ339.png@240x240.jpg', 199, 'product_headset.html?lid=2', 2),
(NULL, '魅蓝EP52蓝牙耳机', '用的惬意 听得尽兴', 'img/product/md/Cgbj0Fui_-OAIlOuAAIlimOCLcA452.png@240x240.jpg', 59, 'product_headset.html?lid=3', 3),
(NULL, '先锋SEC-S201BT蓝牙耳机', '英国进口', 'img/product/md/Cgbj0FjQhy6AEbU5AAF90-HGEVM108.png@240x240.jpg', 129, 'product_headset.html?lid=4', 4),
(NULL, '魅族EP2X耳机', '用的惬意 听得尽兴', 'img/product/md/Cix_s1gcTHCANftiAAErzSizI8c299.png@240x240.jpg', 349, 'product_headset.html?lid=5', 5),
(NULL, '魅蓝EP51蓝牙耳机', '萌友为伴', 'img/product/md/1459849377-64075.png@240x240.jpg', 599, 'product_headset.html?lid=6', 6),

(NULL, 'Skullcandy入耳耳机', '小巧易携带', 'img/product/md/1457790351-39088.png@240x240.jpg', 118, 'product_headset.html?lid=7', 7),
(NULL, 'JBL 立体声入耳耳机', '用的惬意 听得尽兴', 'img/product/md/Cgbj0FoBV0OAVO4FAAHWxio0Reo515.png@240x240.jpg', 29.9, 'product_headset.html?lid=8', 8),
(NULL, '魅蓝EP52蓝牙耳机', '用的惬意 听得尽兴', 'img/product/md/Cgbj0Fmb55mABV4HAAKspJD9ivQ842.png@240x240.jpg', 30.5, 'product_headset.html?lid=9', 9),
(NULL, '先锋SEC-S531BT耳挂式耳机', '用的惬意 听得尽兴', 'img/product/md/Cgbj0VjQh5eAL28yAAIWpS3K_7o970.png@240x240.jpg', 69, 'product_headset.html?lid=10', 10),
(NULL, 'JBLEnduranceRun绕耳式耳机', '时尚个性', 'img/product/md/Cgbj0Vs63tGAZKqZAAJnNA4R6h0890.png@240x240.jpg', 119, 'product_headset.html?lid=11', 11),
(NULL, '三星弹力项圈运动蓝牙耳机', '曲面一体式', 'img/product/md/Cgbj0FuXWBGAbeyhAAGGklYwoFo196.png@240x240.jpg', 199, 'product_headset.html?lid=12', 12),

(NULL, '魅族蓝牙音频接收器', '用的惬意 听得尽兴', 'img/product/md/Cgbj0FuZwuGADzVHAAG7wQGHkAM447.png@240x240.jpg', 199, 'product_headset.html?lid=13', 13),
(NULL, '先锋SEC-E221B无线双耳耳机', '随身收纳', 'img/product/md/Cgbj0Vmx_6mAfWosAANaF3cFRnw212.png@240x240.jpg', 59, 'product_headset.html?lid=14', 14),
(NULL, '先锋SEC蓝牙运动通话耳机', '英国进口', 'img/product/md/Cgbj0Vl1veiAG4nYAAL88VxnvC0962.png@240x240.jpg', 129, 'product_headset.html?lid=15', 15),
(NULL, 'JBLReflectBT无线蓝牙耳机', '无线式', 'img/product/md/CnQOjVida6iADt00AAGALvFfq_8604.png@240x240.jpg', 349, 'product_headset.html?lid=16',16),
(NULL, '先锋SEC-CL32S入耳式耳机', '萌友为伴', 'img/product/md/CnQOjVgtUiKAQNEBAAKT2n9690g275.png@240x240.jpg', 599, 'product_headset.html?lid=17', 17),
(NULL, '索尼颈挂式蓝牙耳机', '超轻材质', 'img/product/md/Cgbj0FpMiyWARXvMAAKojVIQvzA022.png@240x240.jpg', 59, 'product_headset.html?lid=18', 18),

(NULL, 'JBL GO无线蓝牙音箱', '用的惬意 听得尽兴', 'img/product/md/Cgbj0FuXV7aAdi0eAALGqD-Jms0469.png@240x240.jpg', 199, 'product_headset.html?lid=19', 19),
(NULL, '杰士伟重低音时尚音响', '随身收纳', 'img/product/md/Cgbj0FovnBKAFIEiAAKE7COy3w0154.png@240x240.jpg', 59, 'product_headset.html?lid=20', 20),
(NULL, '先锋SEC-CL32S耳机', '英国进口', 'img/product/md/CnQOjVgtUiKAQNEBAAKT2n9690g275.png@240x240.jpg', 129, 'product_headset.html?lid=21', 21),
(NULL, 'JBL GO音乐金砖蓝牙音箱', '还你自由', 'img/product/md/1453688346-89649.png@240x240.jpg', 349, 'product_headset.html?lid=22', 22),
(NULL, 'JBL T205半入耳式音乐耳机', '萌友为伴', 'img/product/md/Cgbj0Vt_rHOAMS3rAAGvFpiSyZk024.png@240x240.jpg', 599, 'product_headset.html?lid=23', 23),
(NULL, 'JBLReflectBT2.0无线蓝牙耳机', '超轻材质', 'img/product/md/Cgbj0FrLN_CAbUgNAAM6lcK6Njc730.png@240x240.jpg', 39, 'product_headset.html?lid=24', 24);



/**手机产品**/
CREATE TABLE mei_phone_detail(
  lid INT PRIMARY KEY AUTO_INCREMENT,
  fid INT,              #所属型号家族编号
  title VARCHAR(128),         #主标题
  subtitle VARCHAR(128),      #副标题
  price DECIMAL(10,2),        #价格
  promise VARCHAR(64),        #服务承诺
  spec VARCHAR(64),           #规格/颜色
  lname VARCHAR(32),          #商品名称
  memory VARCHAR(32),         #内存容量
  network VARCHAR(32),        #网络
  serve  VARCHAR(32)         #服务
);
INSERT INTO mei_phone_detail VALUES
(1,1,'魅族15','魅族15系列最高降501元，享魅族16系列优先购买权',3199,'24:00前下单并支付，预计后天送达,本商品由魅族负责发货并提供售后服务','雅金','15','4G+46G','全网通','延保半年 ¥79/延保一年 ¥129/屏碎保一年 ¥129'),


(2,2,'魅族 15 plus','魅族15系列最高降501元，享魅族16系列优先购买权',2999,'24:00前下单并支付，预计后天送达,本商品由魅族负责发货并提供售后服务','香槟色','15 plus','4G+46G','全网通','延保半年 ¥79/延保一年 ¥129/屏碎保一年 ¥129'),

(3,3,'魅族 16th','魅族15系列最高降501元，享魅族16系列优先购买权',2999,'24:00前下单并支付，预计后天送达,本商品由魅族负责发货并提供售后服务','黑色','16th','6G+128G','全网通','延保半年 ¥79/延保一年 ¥129/屏碎保一年 ¥129'),

(4,4,'魅族 16th plus','魅族15系列最高降501元，享魅族16系列优先购买权',2999,'24:00前下单并支付，预计后天送达,本商品由魅族负责发货并提供售后服务','红色','16th plus','4G+46G','全网通','延保半年 ¥79/延保一年 ¥129/屏碎保一年 ¥129'),

(5,5,'魅族 M15','魅族15系列最高降501元，享魅族16系列优先购买权',3299,'24:00前下单并支付，预计后天送达,本商品由魅族负责发货并提供售后服务','香槟色','M15','6G+64G','全网通','延保半年 ¥79/延保一年 ¥129/屏碎保一年 ¥129'),

(6,6,'魅蓝 6T','魅族15系列最高降501元，享魅族16系列优先购买权',3299,'24:00前下单并支付，预计后天送达,本商品由魅族负责发货并提供售后服务','黑色','6T','6G+64G','全网通','延保半年 ¥79/延保一年 ¥129/屏碎保一年 ¥129'),

(7,7,'魅蓝 S6','魅族15系列最高降501元，享魅族16系列优先购买权',3599,'24:00前下单并支付，预计后天送达,本商品由魅族负责发货并提供售后服务','香槟色','S6','4G+46G','全网通','延保半年 ¥79/延保一年 ¥129/屏碎保一年 ¥129'),

(8,8,'魅蓝 6','魅族15系列最高降501元，享魅族16系列优先购买权',3599,'24:00前下单并支付，预计后天送达,本商品由魅族负责发货并提供售后服务','香槟色','6','6G+128G','全网通','延保半年 ¥79/延保一年 ¥129/屏碎保一年 ¥129'),

(9,9,'魅蓝 Note6','魅族15系列最高降501元，享魅族16系列优先购买权',3599,'24:00前下单并支付，预计后天送达,本商品由魅族负责发货并提供售后服务','黑色','Note6','4G+46G','全网通','延保半年 ¥79/延保一年 ¥129/屏碎保一年 ¥129');




CREATE TABLE mei_product_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  lid INT,                    #手机编号
  xs VARCHAR(128),            #小图片路径
  md VARCHAR(128),            #中图片路径
  lg VARCHAR(128)             #大图片路径
);
INSERT INTO mei_product_pic VALUES
(NULL, 1, 'img/product/xs/Cgbj0Frcbl-AW590AA3GJO-oXOo441.png120x120.jpg','img/product/md/Cgbj0VrcbmKALZ1BAA0NVqTeXpU942.png@240x240.jpg','img/product/lg/Cgbj0Frcbl-AW590AA3GJO-oXOo441.png680x680.jpg'),
(NULL, 1, 'img/product/xs/Cgbj0Vrcbl6ALqcjAAYgIzzUyi0930.png120x120.jpg','img/product/md/Cgbj0VrcbmKALZ1BAA0NVqTeXpU942.png@240x240.jpg','img/product/lg/Cgbj0Vrcbl6ALqcjAAYgIzzUyi0930.png680x680.jpg'),
(NULL, 1, 'img/product/xs/Cgbj0VrcblWANIwFAAdqQqzT4iU606.png120x120.jpg','img/product/md/Cgbj0VrcbmKALZ1BAA0NVqTeXpU942.png@240x240.jpg','img/product/lg/Cgbj0VrcblWANIwFAAdqQqzT4iU606.png680x680.jpg'),
(NULL, 1, 'img/product/xs/Cgbj0FrcblyANwakAAIXb_XuaD8791.png120x120.jpg','img/product/md/Cgbj0VrcbmKALZ1BAA0NVqTeXpU942.png@240x240.jpg','img/product/lg/Cgbj0FrcblyANwakAAIXb_XuaD8791.png680x680.jpg'),

(NULL, 2, 'img/product/xs/Cgbj0Fsx5FCAWBbsAAPqrozimQA960.png120x120.jpg','img/product/md/Cgbj0Fs8gimACX8QAAM3XnW4oOY310.png@240x240.jpg','img/product/lg/Cgbj0Fsx5FCAWBbsAAPqrozimQA960.png680x680.jpg'),
(NULL, 2, 'img/product/xs/Cgbj0VrcbhaAccENAAYZsfzHnfs774.png120x120.jpg','img/product/md/Cgbj0Fs8gimACX8QAAM3XnW4oOY310.png@240x240.jpg','img/product/lg/Cgbj0VrcbhaAccENAAYZsfzHnfs774.png680x680.jpg'),
(NULL, 2, 'img/product/xs/Cgbj0VrcbhGANZPYAArXmltyQ6U438.png120x120.jpg','img/product/md/Cgbj0Fs8gimACX8QAAM3XnW4oOY310.png@240x240.jpg','img/product/lg/Cgbj0VrcbhGANZPYAArXmltyQ6U438.png680x680.jpg'),
(NULL, 2, 'img/product/xs/Cgbj0FrcbhOAUkJJAAI1CT-Z784502.png120x120.jpg','img/product/md/Cgbj0Fs8gimACX8QAAM3XnW4oOY310.png@240x240.jpg','img/product/lg/Cgbj0FrcbhOAUkJJAAI1CT-Z784502.png680x680.jpg'),

(NULL, 3, 'img/product/xs/Cgbj0Vrcbp-AQFzAAAwa60ww23U999.png120x120.jpg','img/product/md/Cgbj0FrcbsCANuv_AAzufmGf2yU449.png@240x240.jpg','img/product/lg/Cgbj0Vrcbp-AQFzAAAwa60ww23U999.png680x680.jpg'),
(NULL, 3, 'img/product/xs/Cgbj0Frcbp2AHIlqAAVPc7JVIoE809.png120x120.jpg','img/product/md/Cgbj0FrcbsCANuv_AAzufmGf2yU449.png@240x240.jpg','img/product/lg/Cgbj0Frcbp2AHIlqAAVPc7JVIoE809.png680x680.jpg'),
(NULL, 3, 'img/product/xs/Cgbj0FrcbpaAA9VEAAYDiehKqnU023.png120x120.jpg','img/product/md/Cgbj0FrcbsCANuv_AAzufmGf2yU449.png@240x240.jpg','img/product/lg/Cgbj0FrcbpaAA9VEAAYDiehKqnU023.png680x680.jpg'),
(NULL, 3, 'img/product/xs/Cgbj0VrcbpyAA6BcAAIS93paJpU930.png120x120.jpg','img/product/md/Cgbj0FrcbsCANuv_AAzufmGf2yU449.png@240x240.jpg','img/product/lg/Cgbj0VrcbpyAA6BcAAIS93paJpU930.png680x680.jpg'),

(NULL, 4, 'img/product/xs/Cgbj0VtqgnWADjmlAAipoSE4bZM493.png120x120.jpg','img/product/md/Cgbj0FtqgnmAFgJPAAhgnScaoFg724.png@240x240.jpg','img/product/lg/Cgbj0VtqgnWADjmlAAipoSE4bZM493.png680x680.jpg'),
(NULL, 4, 'img/product/xs/Cgbj0Ftqgm2AQo8kAALoIW3dU5E207.png120x120.jpg','img/product/md/Cgbj0FtqgnmAFgJPAAhgnScaoFg724.png@240x240.jpg','img/product/lg/Cgbj0Ftqgm2AQo8kAALoIW3dU5E207.png680x680.jpg'),
(NULL, 4, 'img/product/xs/Cgbj0FtqgnSAEr3VAARgym8YDgE000.png120x120.jpg','img/product/md/Cgbj0FtqgnmAFgJPAAhgnScaoFg724.png@240x240.jpg','img/product/lg/Cgbj0FtqgnSAEr3VAARgym8YDgE000.png680x680.jpg'),
(NULL, 4, 'img/product/xs/Cgbj0VtqgnSAO5g5AAIM3cZJ03Y881.png120x120.jpg','img/product/md/Cgbj0FtqgnmAFgJPAAhgnScaoFg724.png@240x240.jpg','img/product/lg/Cgbj0VtqgnSAO5g5AAIM3cZJ03Y881.png680x680.jpg'),

(NULL, 5, 'img/product/xs/Cgbj0VtqgkGAGR7oAAlO1raU1PA201.png120x120.jpg','img/product/md/Cgbj0FtqgkWALkhxAAkE5Uiy2no917.png@240x240.jpg','img/product/lg/Cgbj0VtqgkGAGR7oAAlO1raU1PA201.png680x680.jpg'),
(NULL, 5, 'img/product/xs/Cgbj0FtqgjiAKsrfAANgXYqK538272.png120x120.jpg','img/product/md/Cgbj0FtqgkWALkhxAAkE5Uiy2no917.png@240x240.jpg','img/product/lg/Cgbj0FtqgjiAKsrfAANgXYqK538272.png680x680.jpg'),
(NULL, 5, 'img/product/xs/Cgbj0FtqgkGAAJefAASvxzwhjFc615.png120x120.jpg','img/product/md/Cgbj0FtqgkWALkhxAAkE5Uiy2no917.png@240x240.jpg','img/product/lg/Cgbj0FtqgkGAAJefAASvxzwhjFc615.png680x680.jpg'),
(NULL, 5, 'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0FtqgkWALkhxAAkE5Uiy2no917.png@240x240.jpg','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),

(NULL, 6, 'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0VsM-iyAAgTIAAbXIwKFVL4647.png@240x240.jpg','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 6, 'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0VsM-iyAAgTIAAbXIwKFVL4647.png@240x240.jpg','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 6, 'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0VsM-iyAAgTIAAbXIwKFVL4647.png@240x240.jpg','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 6, 'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0VsM-iyAAgTIAAbXIwKFVL4647.png@240x240.jpg','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),

(NULL, 7, 'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0Fpe-_yAFtuLAAw27mVWra0383.png@240x240.jpg','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 7, 'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0Fpe-_yAFtuLAAw27mVWra0383.png@240x240.jpg','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 7, 'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0Fpe-_yAFtuLAAw27mVWra0383.png@240x240.jpg','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 7, 'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0Fpe-_yAFtuLAAw27mVWra0383.png@240x240.jpg','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),

(NULL, 8, 'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0FnCGzOABMFZAAq4uv7SLg8039.png@240x240.jpg','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 8, 'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0FnCGzOABMFZAAq4uv7SLg8039.png@240x240.jpg','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 8, 'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0FnCGzOABMFZAAq4uv7SLg8039.png@240x240.jpg','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 8, 'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0FnCGzOABMFZAAq4uv7SLg8039.png@240x240.jpg','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),

(NULL, 9, 'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0VmtGa6AThj0AA1hVmco7-o197.png@240x240.jpg','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 9, 'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0VmtGa6AThj0AA1hVmco7-o197.png@240x240.jpg','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),

(NULL, 10,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0Vq9-m2AJr_PAAp1B7CA5GY057.png@240x240.jpg','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 11,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0Vq9-m2AJr_PAAp1B7CA5GY057.png@240x240.jpg','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),

#家电
(NULL, 12,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0VsiNBeADL7rAAY6klI6xR8072.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 13,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0FsrJZqAJ1o3AAUnq6SSHLs891.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 14,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0FsrJhKAOj00AAJCKEeLs5A844.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 15,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0FsrJSaAXgVlAAVkgRL8CFw329.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 16,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0VsrHfCAJmzqAAE80Tvjqy0318.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 17,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0FsXw72ATb9xAAJonJT5d5w606.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 18,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0VsXw26AblSGAAOhrp35nek206.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 19,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0FsrJpqAWKd-AAMqTJ7MucI869.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 20,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0FtnthmAGUEiAASIKXMtiYk633.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 21,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0FsrJZqAJ1o3AAUnq6SSHLs891.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 22,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0FsXw72ATb9xAAJonJT5d5w606.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),

#家居
(NULL, 24,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0VuHtnKAaEwDAAwm7KhYNNc175.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 25,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0Fsx-dOAbrBRAAQUFSuNAaE130.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 26,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0Fsx8-KAYH6xAAiVfgBu44A957.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 27,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0Fsx8-KAYH6xAAiVfgBu44A957.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 28,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0Vq92h6ALTjjAAMaZ8NvgRM782.jpg@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 29,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0VrLCR2AKnZ8AAKttS-7G58412.jpg@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 30,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0VrLByuAL1ElAAFxhsKjS5s498.jpg@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 31,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0VrJwG-AM30YAASB2_Z5WtU180.jpg@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 32,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0VrDgQaAIucLAAM2OPl9ixQ443.jpg@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 33,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0Fs0oYWALeAyAAJYczg6E-A901.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 34,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0Vs0od-AbGYeAAImvEJ7ejg269.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 35,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0Vq930uAA-UdAAO1eCUUR24054.jpg@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 36,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0Vs0ojyAe3fxAAjp2vXU898732.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 37,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0Fs0Yx-AdcJzAAK-nePH9dg165.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 38,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0FsyBTKALVMBAAgCdRqDlvU673.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 39,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0VsyBmGALOhOAALkgOC8dYI475.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 40,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0VsyBbuAZHbaAAHeRVScOHY647.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 41,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0FrLDNuAcH7fAAEYxXaxyCg883.jpg@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 42,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0VrLBiWAfCnhAALueIfLjnA714.jpg@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 43,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0FrJvWyAYzzCAALAA_G3UbE377.jpg@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),

#路由器
(NULL, 44,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/1465698264-58364.jpg@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 45,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/1449647645-31973.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),

#插线板
(NULL, 46,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0VuFBeiAOlhAAAHuSQwUoqI647.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 47,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0VuFBUCAFCU3AAHxNnN3KCs080.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 48,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0FuFBcqAfxstAALbMuQVPWA602.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 49,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0FuFBZKAUI1-AAMT2JAejhM065.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 50,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0FuFBVyADYbpAAR_mHzqGXE021.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 51,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0VuFBOmAXb78AAHagSGilkY317.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 52,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0FuFBL2AKVKcAAN3E10AJ8g277.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 53,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0VtixaeAOtKGAAH7n_YoVNI079.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 54,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0VtixY6AJXCtAAIWxRcRbks582.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 55,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0FtixWyAfDWYAAHbjRQYDHg035.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 56,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0FqXYISATCqSAASJy_5Q9OI132.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 57,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0FqXYMyAN_KTAANuEMW8itk357.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 58,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0FuFB-CAEl7-AAF5T7_6vm4863.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 59,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0VtixdSAG9RAAAHmPhhTLEA817.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 60,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0Vtixb6AUoXbAAFyY9w9TIs398.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),

#耳机
(NULL, 61,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0VrcX6yABHxPAARZwWUAjc4748.png@240x240.jpg','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 62,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0Fsp-8yATCDFAASWKnb1fdQ339.png@240x240.jpg','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 63,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0Fmb55mABV4HAAKspJD9ivQ842.png@240x240.jpg','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 64,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0Vs63tGAZKqZAAJnNA4R6h0890.png@240x240.jpg','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 65,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cix_s1gcTHCANftiAAErzSizI8c299.png@240x240.jpg','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 66,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/1459849377-64075.png@240x240.jpg','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 67,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/1457790351-39088.png@240x240.jpg','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 68,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0FoBV0OAVO4FAAHWxio0Reo515.png@240x240.jpg','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 69,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/CnQOjVgtUiKAQNEBAAKT2n9690g275.png@240x240.jpg','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 70,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0FuXWBGAbeyhAAGGklYwoFo196.png@240x240.jpg','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 71,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/1453688346-89649.png@240x240.jpg','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 72,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0VjPhieAGM_wAAGCxtdck5Y656.png@240x240.jpg','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 73,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0Vmx_6mAfWosAANaF3cFRnw212.png@240x240.jpg','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 74,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0Vl1veiAG4nYAAL88VxnvC0962.png@240x240.jpg','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 75,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/CnQOjVgtUiKAQNEBAAKT2n9690g275.png@240x240.jpg','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 76,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/CnQOjVida6iADt00AAGALvFfq_8604.png@240x240.jpg','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 77,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0FpMiyWARXvMAAKojVIQvzA022.png@240x240.jpg','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 78,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0FuZwuGADzVHAAG7wQGHkAM447.png@240x240.jpg','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 79,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0FovnBKAFIEiAAKE7COy3w0154.png@240x240.jpg','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 80,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0FuXV7aAdi0eAALGqD-Jms0469.png@240x240.jpg','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 81,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0FjQhy6AEbU5AAF90-HGEVM108.png@240x240.jpg','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 82,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0FrLN_CAbUgNAAM6lcK6Njc730.png@240x240.jpg','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 83,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0FrLN6qACopDAAR04HnHsEk035.png@240x240.jpg','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 84,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0Vtj9mqAQ8JyAAJuW1HY4Bs482.png@240x240.jpg','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),

#生活
(NULL, 85,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0Vsx84qAFg12AARBFTOkQhY251.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 86,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0Vsx-FaAbLTzAAVf9JVOOrc497.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 87,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0VnprgiADZd9AAQHUd6m_0g685.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 88,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0Fsjk12AV5s-AAEP6gxOaBc648.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 89,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0Ftw-pqAT7P9AAaBHpkM4e4237.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 90,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0VtyifGAaX-iAAFnixqaJVM736.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 91,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0Vr-eS6AdosNAAJpXqeUynM251.jpg@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 92,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0FrLDNuAcH7fAAEYxXaxyCg883.jpg@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 93,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0VnJ90eAKFSrAAIrModLQEA779.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 94,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0VnltJyABZkkAAKLcjNaHa4278.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 95,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0Vq923uAVbEBAAn6tH3SzhU560.jpg@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 96,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0VrJwG-AM30YAASB2_Z5WtU180.jpg@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 97,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0Vsx5XqAI5YoAAKvWervXlw572.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 98,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0VlZqvaAGb0QAAUD7V55-H8213.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 99,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cix_s1g7l-yANQsqAAJSWz441uE109.jpg@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 100,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0Vmnd4mANqFvAAYQNPMfK1w252.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 101,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0Fn6yW6AAx4RAAVoxZkIpog184.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 102,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0VtFfUWABckeAAFftlAHFk4094.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 103,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0FqwvJWAFb0PAAleBEBSg7E656.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg'),
(NULL, 104,'img/product/xs/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png120x120.jpg','img/product/md/Cgbj0Vqwv3SAKEs9AAeZO9uMlbg447.png@240x240.png','img/product/lg/Cgbj0Vtqgj-AQW52AAJZZteaDhA041.png680x680.jpg');

/**购物车项表结构**/
CREATE TABLE mei_shoppingcart_item(
  iid INT PRIMARY KEY AUTO_INCREMENT,
  uid INT,      #用户编号
  pid INT,      #商品编号
  fid INT,      #此订单项，所属的订单编号
  count INT,        #购买数量
  price DECIMAL(10,2),
  name VARCHAR(20),
  is_checked BOOLEAN #是否已勾选，确定购买
);
/*订单状态结构表*/
CREATE TABLE mei_status(
  sid INT PRIMARY KEY AUTO_INCREMENT,
  status VARCHAR(10)
);
/*购物车订单表结构*/
CREATE TABLE mei_forder(
  fid INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(20),
  phone VARCHAR(20),
  remark VARCHAR(20),
  date DATETIME,
  total DECIMAL(10,2),
  address VARCHAR(200),
  sid  INT,     #订单状态
  uid INT
);
#用户收货地址
CREATE TABLE mei_receiver_address(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  uid INT,
  receiver VARCHAR(8),
  province VARCHAR(16),
  city VARCHAR(16),
  county    VARCHAR(16),
  address VARCHAR(128),
  phone CHAR(16),
  postcode CHAR(6),
  tag VARCHAR(16),
  is_default BOOLEAN 
);
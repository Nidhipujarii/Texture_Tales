create database case2;
use case2;

CREATE TABLE product_details(
   product_id    VARCHAR(6) NOT NULL PRIMARY KEY
  ,price         INTEGER  NOT NULL
  ,product_name  VARCHAR(32) NOT NULL
  ,category_id   INTEGER  NOT NULL
  ,segment_id    INTEGER  NOT NULL
  ,style_id      INTEGER  NOT NULL
  ,category_name VARCHAR(6) NOT NULL
  ,segment_name  VARCHAR(6) NOT NULL
  ,style_name    VARCHAR(19) NOT NULL
);
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('c4a632',13,'Navy Oversized Jeans - Womens',1,3,7,'Womens','Jeans','Navy Oversized');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('e83aa3',32,'Black Straight Jeans - Womens',1,3,8,'Womens','Jeans','Black Straight');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('e31d39',10,'Cream Relaxed Jeans - Womens',1,3,9,'Womens','Jeans','Cream Relaxed');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('d5e9a6',23,'Khaki Suit Jacket - Womens',1,4,10,'Womens','Jacket','Khaki Suit');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('72f5d4',19,'Indigo Rain Jacket - Womens',1,4,11,'Womens','Jacket','Indigo Rain');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('9ec847',54,'Grey Fashion Jacket - Womens',1,4,12,'Womens','Jacket','Grey Fashion');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('5d267b',40,'White Tee Shirt - Mens',2,5,13,'Mens','Shirt','White Tee');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('c8d436',10,'Teal Button Up Shirt - Mens',2,5,14,'Mens','Shirt','Teal Button Up');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('2a2353',57,'Blue Polo Shirt - Mens',2,5,15,'Mens','Shirt','Blue Polo');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('f084eb',36,'Navy Solid Socks - Mens',2,6,16,'Mens','Socks','Navy Solid');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('b9a74d',17,'White Striped Socks - Mens',2,6,17,'Mens','Socks','White Striped');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('2feb6b',29,'Pink Fluro Polkadot Socks - Mens',2,6,18,'Mens','Socks','Pink Fluro Polkadot');




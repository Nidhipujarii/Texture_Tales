use case2;
CREATE TABLE product_hierarchy(
   id         INTEGER  NOT NULL PRIMARY KEY 
  ,parent_id  INTEGER 
  ,level_text VARCHAR(19) NOT NULL
  ,level_name VARCHAR(8) NOT NULL
);
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (1,NULL,'Womens','Category');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (2,NULL,'Mens','Category');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (3,1,'Jeans','Segment');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (4,1,'Jacket','Segment');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (5,2,'Shirt','Segment');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (6,2,'Socks','Segment');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (7,3,'Navy Oversized','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (8,3,'Black Straight','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (9,3,'Cream Relaxed','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (10,4,'Khaki Suit','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (11,4,'Indigo Rain','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (12,4,'Grey Fashion','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (13,5,'White Tee','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (14,5,'Teal Button Up','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (15,5,'Blue Polo','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (16,6,'Navy Solid','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (17,6,'White Striped','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (18,6,'Pink Fluro Polkadot','Style');
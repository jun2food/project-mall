-- item_list
drop table item_list;
CREATE TABLE item_list (
	il_no  INT(11)     NOT NULL primary key, -- il_no
	m_no   INT(11)     NULL,     -- m_no
	p_no   INT(11)     NULL,     -- p_no
	il_cnt INT(11)     NULL,     -- il_cnt
	ph_no  INT(11)     NULL,     -- ph_no
	COL    VARCHAR(50) NULL      -- il_size
);


ALTER TABLE item_list
	MODIFY COLUMN il_no INT(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE item_list
	AUTO_INCREMENT = 1;

-- ph_list
CREATE TABLE ph_list (
	ph_no          INT(11)      NOT NULL primary key, -- ph_no
	ph_status      INT(11)      NULL,     -- ph_status
	ph_addr        VARCHAR(100) NULL,     -- ph_addr
	ph_date        DATE         NULL,     -- ph_date
	ph_receiver    VARCHAR(50)  NULL,     -- ph_receiver
	ph_tel         VARCHAR(50)  NULL,     -- ph_tel
	ph_msg         VARCHAR(500) NULL,     -- ph_msg
	ph_total_price INT(11)      NULL,     -- ph_total_price
	ph_method      INT(11)      NULL      -- ph_method
);

ALTER TABLE ph_list
	MODIFY COLUMN ph_no INT(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE ph_list
	AUTO_INCREMENT = 1;
	
drop table tbl_attach if exists
drop table tbl_reply if exists
drop table tbl_board if exists
drop table tbl_member if exists
CREATE TABLE tbl_attach(save_file_name varchar(200) NOT NULL PRIMARY KEY,real_file_name varchar(200) NOT NULL,bno INTEGER NOT NULL,reg_date timestamp DEFAULT CURRENT_TIMESTAMP)
CREATE TABLE tbl_board(bno INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,title varchar(200) NOT NULL,content VARCHAR(2400),writer varchar(50) NOT NULL,reg_date timestamp DEFAULT CURRENT_TIMESTAMP,update_date timestamp DEFAULT CURRENT_TIMESTAMP,view_count INTEGER DEFAULT 0,reply_count INTEGER DEFAULT 0)
INSERT INTO tbl_board(bno, title, content, writer, reg_date, update_date, view_count, reply_count) VALUES(1, '수정된 글입니다.', '수정 테스트 ', 'user00', '2019-10-10 03:20:01', '2019-10-10 03:20:01', 0, 1),(2, '새로운 글을 넣습니다. ', '새로운 글을 넣습니다. ', 'user00', '2019-10-10 03:25:36', '2019-10-10 03:25:36', 0, 0),(3, '새로운 글을 넣습니다. ', '새로운 글을 넣습니다. ', 'user00', '2019-10-10 03:25:36', '2019-10-10 03:25:36', 0, 0),(4, '새로운 글을 넣습니다. ', '새로운 글을 넣습니다. ', 'user00', '2019-10-10 03:26:56', '2019-10-10 03:26:56', 0, 0),(5, '새로운 글을 넣습니다. ', '새로운 글을 넣습니다. ', 'user00', '2019-10-10 03:26:56', '2019-10-10 03:26:56', 0, 0)
CREATE TABLE tbl_member(user_id varchar(50) NOT NULL PRIMARY KEY,user_pw varchar(255) NOT NULL,user_name varchar(50) NOT NULL,email varchar(100) DEFAULT NULL,point INTEGER DEFAULT 0,enabled NUMERIC(1) DEFAULT 0,levels varchar(50) DEFAULT 'ROLE_USER',reg_date timestamp DEFAULT CURRENT_TIMESTAMP,update_date timestamp DEFAULT CURRENT_TIMESTAMP)
INSERT INTO tbl_member(user_id, user_pw, user_name, email, point, enabled, levels, reg_date, update_date) VALUES('admin', '$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO', 'admin', 'user02@edu.com', 0, 1, 'ROLE_ADMIN', '2019-10-15 10:41:44', '2019-10-15 10:41:44')
INSERT INTO tbl_member(user_id, user_pw, user_name, email, point, enabled, levels, reg_date, update_date) VALUES('user02', '$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO', 'user02', 'user02@edu.com', 0, 1, 'ROLE_USER', '2019-10-15 10:41:44', '2019-10-15 10:41:44')
INSERT INTO tbl_member(user_id, user_pw, user_name, email, point, enabled, levels, reg_date, update_date) VALUES('user03', '$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO', 'user03', 'user02@edu.com', 0, 1, 'ROLE_USER', '2019-10-15 10:41:44', '2019-10-15 10:41:44')
INSERT INTO tbl_member(user_id, user_pw, user_name, email, point, enabled, levels, reg_date, update_date) VALUES('user04', '$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO', 'user04', 'user02@edu.com', 0, 1, 'ROLE_USER', '2019-10-15 10:41:44', '2019-10-15 10:41:44')
INSERT INTO tbl_member(user_id, user_pw, user_name, email, point, enabled, levels, reg_date, update_date) VALUES('user05', '$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO', 'user05', 'user02@edu.com', 0, 1, 'ROLE_USER', '2019-10-15 10:41:44', '2019-10-15 10:41:44')
INSERT INTO tbl_member(user_id, user_pw, user_name, email, point, enabled, levels, reg_date, update_date) VALUES('user06', '$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO', 'user06', 'user02@edu.com', 0, 1, 'ROLE_USER', '2019-10-15 10:41:44', '2019-10-15 10:41:44')
INSERT INTO tbl_member(user_id, user_pw, user_name, email, point, enabled, levels, reg_date, update_date) VALUES('user07', '$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO', 'user07', 'user02@edu.com', 0, 1, 'ROLE_USER', '2019-10-15 10:41:44', '2019-10-15 10:41:44')
INSERT INTO tbl_member(user_id, user_pw, user_name, email, point, enabled, levels, reg_date, update_date) VALUES('user08', '$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO', 'user08', 'user02@edu.com', 0, 1, 'ROLE_USER', '2019-10-15 10:41:44', '2019-10-15 10:41:44')
INSERT INTO tbl_member(user_id, user_pw, user_name, email, point, enabled, levels, reg_date, update_date) VALUES('user09', '$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO', 'user09', 'user02@edu.com', 0, 1, 'ROLE_USER', '2019-10-15 10:41:44', '2019-10-15 10:41:44')
INSERT INTO tbl_member(user_id, user_pw, user_name, email, point, enabled, levels, reg_date, update_date) VALUES('user10', '$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO', 'user10', 'user02@edu.com', 0, 1, 'ROLE_USER', '2019-10-15 10:41:44', '2019-10-15 10:41:44')
INSERT INTO tbl_member(user_id, user_pw, user_name, email, point, enabled, levels, reg_date, update_date) VALUES('user11', '$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO', 'user11', 'user02@edu.com', 0, 1, 'ROLE_USER', '2019-10-15 10:41:44', '2019-10-15 10:41:44')
CREATE TABLE tbl_reply(rno INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,bno INTEGER DEFAULT 0,reply_text varchar(1000) NOT NULL,replyer varchar(50) NOT NULL,reg_date timestamp DEFAULT CURRENT_TIMESTAMP,update_date timestamp DEFAULT CURRENT_TIMESTAMP)
INSERT INTO tbl_reply(rno, bno, reply_text, replyer, reg_date, update_date) VALUES(1, 1, '1:댓글을 수정   MOD', 'user02', '2019-10-17 02:39:01', '2019-10-18 01:52:51')
ALTER TABLE tbl_attach ADD CONSTRAINT fk_board_attach FOREIGN KEY (bno) REFERENCES tbl_board (bno)
ALTER TABLE tbl_reply ADD CONSTRAINT fk_board FOREIGN KEY (bno) REFERENCES tbl_board (bno)
ALTER TABLE tbl_board ADD COLUMN board_type VARCHAR(45) NULL DEFAULT NULL COMMENT '게시판타입:tbl_board_type테이블의 값을 가져다 사용' AFTER bno
CREATE tbl_board_type(board_type VARCHAR(45) NOT NULL COMMENT '게시판타입:예,  notice, gallery, qna',board_name VARCHAR(45) NULL DEFAULT NULL COMMENT '게시판 이름',board_sun INT(11) NULL DEFAULT NULL COMMENT '게시판 출력 순서',PRIMARY KEY(board_type))
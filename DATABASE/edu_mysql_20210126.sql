-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- 생성 시간: 21-01-26 07:02
-- 서버 버전: 10.4.13-MariaDB
-- PHP 버전: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `edu`
--

DELIMITER $$
--
-- 프로시저
--
DROP PROCEDURE IF EXISTS `dummyBoard`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `dummyBoard` (IN `p_loop` INT)  BEGIN
	declare cnt int default 2;
    delete from tbl_board where bno > 1;
    while cnt <= p_loop do
    INSERT INTO tbl_board(bno,title,content,writer)
    VALUES
    (cnt, concat(cnt,'번째 게시물 입니다.'), '게시물 내용 입니다.', 'admin');
    set cnt = cnt + 1;
    end while;
END$$

DROP PROCEDURE IF EXISTS `dummyMember`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `dummyMember` (IN `p_loop` INT)  BEGIN
	declare cnt int default 1;#반복문 변수선언
    delete from tbl_member where user_id like 'dummy%';
    while cnt <= p_loop do
		INSERT INTO tbl_member(user_id,user_pw,user_name,email,point,enabled,levels) 
		VALUES 
		(concat('dummy_',cnt) , '1234', '관리자', 'admin@abc.com', '0', '1', 'ROLE_ADMIN');
        set cnt = cnt + 1;
    end while;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- 테이블 구조 `tbl_attach`
--

DROP TABLE IF EXISTS `tbl_attach`;
CREATE TABLE IF NOT EXISTS `tbl_attach` (
  `save_file_name` varchar(255) NOT NULL,
  `real_file_name` varchar(255) DEFAULT NULL COMMENT '첨부파일명',
  `bno` int(11) NOT NULL COMMENT '부모 게시물의 일련번호',
  `reg_date` timestamp NULL DEFAULT current_timestamp() COMMENT '등록일자',
  PRIMARY KEY (`save_file_name`),
  KEY `fk_tbl_attach_tbl_board_idx` (`bno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='게시물 첨부파일';

--
-- 테이블의 덤프 데이터 `tbl_attach`
--

INSERT INTO `tbl_attach` (`save_file_name`, `real_file_name`, `bno`, `reg_date`) VALUES
('11732b82-1e11-4cdf-a6d6-fa6e8f357009.png', '스크린샷.png', 2, '2021-01-14 06:24:22'),
('d4aa65bd-acf1-401d-a08e-9dfb33d250de.png', 'slide_03.png', 153, '2021-01-22 08:54:09'),
('f2cb0d92-95f8-43f8-a845-b1bf8b145242.png', 'slide_03.png', 151, '2021-01-22 09:00:19');

-- --------------------------------------------------------

--
-- 테이블 구조 `tbl_board`
--

DROP TABLE IF EXISTS `tbl_board`;
CREATE TABLE IF NOT EXISTS `tbl_board` (
  `bno` int(11) NOT NULL AUTO_INCREMENT COMMENT '게시물 일련번호\nAI 일려번호를 자동증가 가능',
  `board_type` varchar(45) DEFAULT NULL COMMENT '게시판타입:tbl_board_type테이블의 값을 가져다 사용\n',
  `title` varchar(255) DEFAULT NULL COMMENT '제목',
  `content` text DEFAULT NULL COMMENT '게시물 내용',
  `writer` varchar(45) DEFAULT NULL COMMENT '작성자',
  `view_count` int(11) DEFAULT 0 COMMENT '게시글 조회수',
  `reply_count` int(11) DEFAULT 0 COMMENT '댓글 개수',
  `reg_date` timestamp NULL DEFAULT current_timestamp() COMMENT '등록 일자',
  `update_date` timestamp NULL DEFAULT current_timestamp() COMMENT '수정 날짜',
  PRIMARY KEY (`bno`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8 COMMENT='게시물 관리';

--
-- 테이블의 덤프 데이터 `tbl_board`
--

INSERT INTO `tbl_board` (`bno`, `board_type`, `title`, `content`, `writer`, `view_count`, `reply_count`, `reg_date`, `update_date`) VALUES
(1, 'gallery', '1번째 게시물입니다.', '게시물 내용', 'admin', 6, 0, '2020-12-23 03:24:17', '2021-01-25 00:34:19'),
(2, 'notice', '2번째 게시물입니다.', '게시물 내용', 'admin', 63, 0, '2020-12-23 06:03:11', '2021-01-14 06:24:22'),
(3, 'notice', '3번째 게시물입니다.', '게시물 내용', 'admin', 3, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(4, 'notice', '4번째 게시물입니다.', '게시물 내용', 'admin', 3, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(5, 'notice', '5번째 게시물입니다.', '게시물 내용', 'admin', 2, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(6, 'notice', '6번째 게시물입니다.', '게시물 내용', 'admin', 1, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(7, 'notice', '7번째 게시물입니다.', '게시물 내용', 'admin', 3, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(8, 'notice', '8번째 게시물입니다.', '게시물 내용', 'admin', 4, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(10, 'notice', '10번째 게시물입니다.', '게시물 내용', 'admin', 37, 7, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(11, 'notice', '11번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(12, 'notice', '12번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(13, 'notice', '13번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(14, 'notice', '14번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(16, 'notice', '16번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(17, 'notice', '17번째 게시물입니다.', '게시물 내용', 'admin', 2, 2, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(18, 'notice', '18번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(19, 'notice', '19번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(20, 'notice', '20번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(21, 'notice', '21번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(22, 'notice', '22번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(23, 'notice', '23번째 게시물입니다.', '수정', 'admin', 4, 0, '2020-12-23 06:03:11', '2020-12-29 07:12:59'),
(24, 'notice', '24번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(26, 'notice', '26번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(27, 'notice', '27번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(28, 'notice', '28번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(29, 'notice', '29번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(30, 'notice', '30번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(31, 'notice', '31번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(32, 'notice', '32번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(33, 'notice', '33번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(34, 'notice', '34번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(35, 'notice', '35번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(36, 'notice', '36번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(37, 'notice', '37번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(38, 'notice', '38번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(39, 'notice', '39번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(40, 'notice', '40번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(41, 'notice', '41번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(42, 'notice', '42번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(43, 'notice', '43번째 게시물입니다.', '게시물 내용', 'admin', 1, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(44, 'notice', '44번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(45, 'notice', '45번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(46, 'notice', '46번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(47, 'notice', '47번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(48, 'notice', '48번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(49, 'notice', '49번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(50, 'notice', '50번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(51, 'notice', '51번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(52, 'notice', '52번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(53, 'notice', '53번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(54, 'notice', '54번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(55, 'notice', '55번째 게시물입니다.', '게시물 내용', 'admin', 2, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(56, 'notice', '56번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(57, 'notice', '57번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(58, 'notice', '58번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(59, 'notice', '59번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(60, 'notice', '60번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(61, 'notice', '61번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(62, 'notice', '62번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(63, 'notice', '63번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(64, 'notice', '64번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(65, 'notice', '65번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(66, 'notice', '66번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(68, 'notice', '68번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(69, 'notice', '69번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(70, 'notice', '70번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(71, 'notice', '71번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(72, 'notice', '72번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(73, 'notice', '73번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(74, 'notice', '74번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(75, 'notice', '75번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(76, 'notice', '76번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(77, 'notice', '77번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(79, 'notice', '79번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(80, 'notice', '80번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(81, 'notice', '81번째 게시물입니다.', '게시물 내용', 'admin', 1, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(82, 'notice', '82번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(83, 'notice', '83번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(84, 'notice', '84번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(85, 'notice', '85번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(86, 'notice', '86번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(87, 'notice', '87번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(88, 'notice', '88번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(89, 'notice', '89번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(90, 'notice', '90번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(91, 'notice', '91번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(92, 'notice', '92번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(93, 'notice', '93번째 게시물입니다.', '게시물 내용', 'admin', 1, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(94, 'notice', '94번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(95, 'notice', '95번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(96, 'notice', '96번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(97, 'notice', '97번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(98, 'notice', '98번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(99, 'notice', '99번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(100, 'notice', '100번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(101, 'notice', '101번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(102, 'notice', '102번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(103, 'notice', '103번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(104, 'notice', '104번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(105, 'notice', '105번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(106, 'notice', '106번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(107, 'notice', '107번째 게시물입니다.', '게시물 내용', 'admin', 0, 5, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(108, 'notice', '108번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(109, 'notice', '109번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(110, 'notice', '110번째 게시물입니다.', '게시물 내용', 'admin', 0, 0, '2020-12-23 06:03:11', '2020-12-23 06:03:11'),
(111, 'notice', '글수정5656', '<p><span style=\"font-family: 궁서; font-size: 1rem;\">궁서로 수정</span><br></p><p>수정가</p>', '메렁', 37, 0, '2020-12-29 03:44:26', '2020-12-29 07:17:35'),
(149, 'notice', 'bbb', '<p>bbb</p>', 'aaa', 30, 0, '2020-12-31 08:47:45', '2021-01-04 07:17:24'),
(151, 'notice', '수정 메룽', '<p>메롱</p>', '메렁', 205, 6, '2021-01-04 03:08:59', '2021-01-22 09:00:19'),
(153, 'notice', '11', '<p>11<br></p>', '11', 12, 0, '2021-01-22 08:51:22', '2021-01-22 08:54:29');

-- --------------------------------------------------------

--
-- 테이블 구조 `tbl_board_type`
--

DROP TABLE IF EXISTS `tbl_board_type`;
CREATE TABLE IF NOT EXISTS `tbl_board_type` (
  `board_type` varchar(45) NOT NULL COMMENT '게시판타입notice',
  `board_name` varchar(45) DEFAULT NULL COMMENT '게시판 이름',
  `board_sun` int(11) DEFAULT NULL COMMENT '게시판 출력순서',
  PRIMARY KEY (`board_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='게시판 생성 테이블';

--
-- 테이블의 덤프 데이터 `tbl_board_type`
--

INSERT INTO `tbl_board_type` (`board_type`, `board_name`, `board_sun`) VALUES
('gallery', '갤러리 게시판', 2),
('notice', '공지사항', 1);

-- --------------------------------------------------------

--
-- 테이블 구조 `tbl_member`
--

DROP TABLE IF EXISTS `tbl_member`;
CREATE TABLE IF NOT EXISTS `tbl_member` (
  `user_id` varchar(45) NOT NULL COMMENT '회원 아이디',
  `user_pw` varchar(255) DEFAULT NULL COMMENT '회원 로그인 암호',
  `user_name` varchar(255) DEFAULT NULL COMMENT '회원 이름',
  `email` varchar(255) DEFAULT NULL COMMENT '회원 이메일',
  `point` int(11) DEFAULT 0 COMMENT '적립 포인트',
  `enabled` int(1) DEFAULT 1 COMMENT '활동 가능 여부\n로그인 가능여부',
  `levels` varchar(45) DEFAULT 'ROLE_USER' COMMENT '권한값\nROLE_ADMUN (관리자)\nROLE_USER (사용자)',
  `reg_date` timestamp NULL DEFAULT current_timestamp() COMMENT '등록일자\n1970부터 초단위로 현재까지 계산한 값',
  `update_date` timestamp NULL DEFAULT current_timestamp() COMMENT '수정 일자',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='회원 관리';

--
-- 테이블의 덤프 데이터 `tbl_member`
--

INSERT INTO `tbl_member` (`user_id`, `user_pw`, `user_name`, `email`, `point`, `enabled`, `levels`, `reg_date`, `update_date`) VALUES
('admin', '$2a$10$kIqR/PTloYan/MRNiEsy6uYO6OCHVmAKR4kflVKQkJ345nqTiuGeO', '관리자', 'abc@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 03:03:36', '2020-12-23 03:03:36'),
('dummy_1', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_10', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_100', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_101', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_102', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_103', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_104', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_105', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_106', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_107', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_108', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_109', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_11', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_110', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_12', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_13', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_14', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_15', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_16', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_17', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_18', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_19', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_2', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_20', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_21', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_22', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_23', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_24', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_25', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_26', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_27', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_28', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_29', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_3', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_30', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_31', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_32', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_33', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_34', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_35', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_36', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_37', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_38', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_39', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_4', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_40', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_41', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_42', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_43', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_44', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_45', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_46', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_47', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_48', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_49', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_5', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_50', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_51', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_52', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_53', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_54', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_55', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_56', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_57', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_58', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_59', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_6', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_60', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_61', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_62', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_63', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_64', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_65', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_66', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_67', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_68', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_69', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_7', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_70', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_71', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_72', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_73', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_74', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_75', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_76', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_77', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_78', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_79', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_8', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_80', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_81', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_82', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_83', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_84', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_85', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_86', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_87', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_88', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_89', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_9', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_90', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_91', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_92', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_93', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_94', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_95', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_96', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_97', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05'),
('dummy_99', '$2a$10$lf9JOjNzgfrfyniYFdFUm.0B1KdxZyWVVRwDXZwJ3Z/bqJpzS1WAK', '관리자', 'admin@abc.com', 0, 1, 'ROLE_ADMIN', '2020-12-23 06:03:05', '2020-12-23 06:03:05');

-- --------------------------------------------------------

--
-- 테이블 구조 `tbl_reply`
--

DROP TABLE IF EXISTS `tbl_reply`;
CREATE TABLE IF NOT EXISTS `tbl_reply` (
  `rno` int(11) NOT NULL AUTO_INCREMENT COMMENT '댓글 일련번호',
  `bno` int(11) NOT NULL COMMENT '부모 게시글 일련번호',
  `reply_text` varchar(1000) DEFAULT NULL COMMENT '댓글내용',
  `replyer` varchar(45) DEFAULT NULL COMMENT '작성자',
  `reg_date` timestamp NULL DEFAULT current_timestamp() COMMENT '등록일시',
  `update_date` timestamp NULL DEFAULT current_timestamp() COMMENT '수정일시',
  PRIMARY KEY (`rno`),
  KEY `fk_tbl_reply_tbl_board1_idx` (`bno`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='댓글관리';

--
-- 테이블의 덤프 데이터 `tbl_reply`
--

INSERT INTO `tbl_reply` (`rno`, `bno`, `reply_text`, `replyer`, `reg_date`, `update_date`) VALUES
(1, 151, '댓글1', '관리자', '2021-01-05 00:26:46', '2021-01-14 03:27:18'),
(3, 10, '댓글2테스트', '관리자', '2021-01-06 01:05:02', '2021-01-06 01:05:02'),
(5, 10, '댓-----글2테스트', '관리자', '2021-01-06 05:35:38', '2021-01-06 05:35:38'),
(6, 10, '댓----글2테스트', '관리자', '2021-01-06 05:35:39', '2021-01-06 05:35:39'),
(7, 10, '댓---글2테스트', '관리자', '2021-01-06 05:35:40', '2021-01-06 05:35:40'),
(8, 10, '댓--글2테스트', '관리자', '2021-01-06 05:35:46', '2021-01-06 05:35:46'),
(9, 10, '댓-글2테트', '관리자', '2021-01-06 05:35:54', '2021-01-06 05:35:54'),
(10, 10, '댓글2테트', '관리자', '2021-01-06 05:36:09', '2021-01-06 05:36:09'),
(15, 17, '댓글작성 테스트', '관리자', '2021-01-07 04:52:35', '2021-01-07 04:52:35'),
(16, 17, '123', '12', '2021-01-07 05:09:17', '2021-01-07 05:09:17'),
(21, 151, '123', '123', '2021-01-14 03:32:48', '2021-01-14 03:32:48'),
(22, 151, '1234', '123', '2021-01-14 03:42:08', '2021-01-14 03:42:08'),
(23, 151, '55555', '123', '2021-01-14 03:42:15', '2021-01-14 03:42:15'),
(24, 151, '1235577777', '111', '2021-01-14 03:42:54', '2021-01-14 03:42:54'),
(25, 151, '55555', '555', '2021-01-14 06:00:16', '2021-01-14 06:00:16');

--
-- 덤프된 테이블의 제약사항
--

--
-- 테이블의 제약사항 `tbl_attach`
--
ALTER TABLE `tbl_attach`
  ADD CONSTRAINT `fk_tbl_attach_tbl_board` FOREIGN KEY (`bno`) REFERENCES `tbl_board` (`bno`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- 테이블의 제약사항 `tbl_reply`
--
ALTER TABLE `tbl_reply`
  ADD CONSTRAINT `fk_tbl_reply_tbl_board1` FOREIGN KEY (`bno`) REFERENCES `tbl_board` (`bno`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

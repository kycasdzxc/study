-- SEQUENCE 생성
CREATE SEQUENCE SEQ_COUNSEL;
SELECT nextval(SEQ_COUNSEL);

-- 현재시간 확인
SELECT CURRENT_TIMESTAMP();
SELECT NOW();

-- 게시판 crud 작성

SELECT * from counsel_info ORDER BY 5 desc;

INSERT INTO counsel_info (COUNSEL_TITLE, COUNSEL_CONTENT, COUNSEL_WRITER) VALUES ('Hello, MariaDB!', 'MariaDB 첫 사용!', '김둥둥');

UPDATE counsel_info SET COUNSEL_TITLE = 'MariaDB 수정', COUNSEL_CONTENT = '내용 수정!' WHERE COUNSEL_BNO = 14;

DELETE FROM counsel_info WHERE COUNSEL_BNO = 10;

-- 댓글 crud 작성
SELECT * FROM counsel_reply ORDER BY 4 DESC;

DELETE FROM counsel_reply WHERE COUNSEL_REPLY_BNO = 14;

INSERT INTO counsel_reply (COUNSEL_REPLY_CONTENT, COUNSEL_REPLY_WRITER, COUNSEL_REPLY_BNO) VALUES ('덧글 하이!', '김둥둥', 14);

-- 비속어 ***** 변환
SELECT * FROM counsel_info WHERE COUNSEL_WRITER LIKE '%젠%' OR '%둥%';

SELECT
	REGEXP_REPLACE(
		(SELECT COUNSEL_WRITER FROM counsel_info WHERE COUNSEL_BNO = 14)
		, '크', '*****'
	)
FROM
	DUAL;
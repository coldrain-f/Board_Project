###### 2021-06-08(화)

모든 페이지에 `Noto Sans KR`구글 폰트 적용

HTML 파일 연동 안 되어 있던 링크들 연동 처리

글 작성 페이지에 summernote 추가

전체적인 디자인 변경

![image-20210608120950667](C:\Users\user\AppData\Roaming\Typora\typora-user-images\image-20210608120950667.png)

데이터베이스 게시판 테이블 모델링 (AQueryTool 이용)



```sql
-- 테이블 순서는 관계를 고려하여 한 번에 실행해도 에러가 발생하지 않게 정렬되었습니다.

-- TBL_BOARD Table Create SQL
CREATE TABLE TBL_BOARD
(
    BNO           INT             NOT NULL, 
    TITLE         VARCHAR2(255)    NOT NULL, 
    CONTENTS      VARCHAR2(2048)    NOT NULL, 
    WRITER        VARCHAR2(255)    NOT NULL, 
    REGDATE       TIMESTAMP       NOT NULL, 
    UPDATEDATE    TIMESTAMP       NOT NULL, 
    HIT           INT             NOT NULL, 
    CONSTRAINT  PK_BOARD PRIMARY KEY (BNO)
)
/

CREATE SEQUENCE SEQ_BOARD
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER TBL_BOARD_AI_TRG
BEFORE INSERT ON TBL_BOARD 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT SEQ_BOARD.NEXTVAL
    INTO :NEW.BNO
    FROM DUAL;
END;
/

--DROP TRIGGER TBL_BOARD_AI_TRG;
/

--DROP SEQUENCE TBL_BOARD_SEQ;
/

COMMENT ON TABLE TBL_BOARD IS '게시판 테이블'
/

COMMENT ON COLUMN TBL_BOARD.BNO IS '게시판 번호'
/

COMMENT ON COLUMN TBL_BOARD.TITLE IS '게시판 제목'
/

COMMENT ON COLUMN TBL_BOARD.CONTENTS IS '게시판 내용'
/

COMMENT ON COLUMN TBL_BOARD.WRITER IS '게시판 작성자'
/

COMMENT ON COLUMN TBL_BOARD.REGDATE IS '게시판 등록날짜'
/

COMMENT ON COLUMN TBL_BOARD.UPDATEDATE IS '게시판 수정날짜'
/

COMMENT ON COLUMN TBL_BOARD.HIT IS '게시판 조회수'
/

```

게시판 테이블 자동 생성 쿼리문 (AQueryTool)에서 PK의 INDEX 사용을 위해서 살짝 추가해 주었다.



오라클의 Get Started 사이트로 BOARD 계정과 데이터베이스 생성



```sql
-- 모든 게시글 조회
SELECT TBL_BOARD.* FROM TBL_BOARD;

-- 모든 게시글 인덱스 내림차순 힌트 조회
SELECT /*+ INDEX_DESC(TBL_BOARD PK_BOARD)*/ TBL_BOARD.* FROM TBL_BOARD;

-- 페이징 조회 (2페이지 10개 데이터)
SELECT N.* FROM (
    SELECT /*+ INDEX_DESC(TBL_BOARD PK_BOARD)*/ ROWNUM RN, TBL_BOARD.*
    FROM TBL_BOARD
    WHERE ROWNUM <= 20 -- (pageNum * amount)
) N
WHERE RN > 10; -- ( (pageNum - 1) * amount )

-- 글 작성
INSERT INTO TBL_BOARD (TITLE, CONTENTS, WRITER, REGDATE, UPDATEDATE, HIT)
VALUES ('샘플 게시글입니다.', '샘플 게시글 내용입니다.', 'admin', SYSDATE, SYSDATE, 0);

-- 상세 페이지 조회 ( 게시글 번호가 10번인 상세페이지 )
SELECT TBL_BOARD.* FROM TBL_BOARD
WHERE BNO = 10;

-- 게시글 수정 ( 게시글 번호가 10번인 게시글 수정 )
    UPDATE TBL_BOARD 
    SET TITLE = '수정된 게시글입니다.', CONTENTS = '수정된 게시글 내용입니다.', UPDATEDATE = SYSDATE
    WHERE BNO = 10;

-- 게시글 삭제 ( 게시글 번호가 10번인 게시글 삭제 )
DELETE FROM TBL_BOARD
WHERE BNO = 10;

-- 더미 데이터 추가
BEGIN
FOR I IN 1..200 LOOP
INSERT INTO TBL_BOARD (TITLE, CONTENTS, WRITER, REGDATE, UPDATEDATE, HIT)
VALUES ('샘플 게시글입니다.', '샘플 게시글 내용입니다.', 'admin', SYSDATE, SYSDATE, 0);
END LOOP;
END;
```

게시글 CRUD, 페이징, 더미 데이터 생성용 SQL 작성 
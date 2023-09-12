-- 다음 문제를 읽고 주어진 문제를 해결하시오.


-- 1. 다음 지시사항에 따라 BANK_T 테이블과 CUST_T 테이블을 생성하시오.(30점)
--    1) BANK_T 테이블
--        (1) BANK_CODE : 은행코드, 가변길이문자열 최대 20바이트, 필수, 기본키(PK_BANK)
--        (2) BANK_NAME : 은행이름, 가변길이문자열 최대 30바이트
--        (3) BANK_TEL  : 전화번호, 가변길이문자열 최대 30바이트
--    2) CUST_T 테이블
--        (1) CUST_NO   : 고객번호, 숫자, 필수, 기본키(PK_CUST)
--        (2) CUST_NAME : 고객명, 가변길이문자열 최대 30바이트, 필수
--        (3) CUST_TEL  : 연락처, 가변길이문자열 최대 30바이트, 중복 없음
--        (4) CUST_BORN : 생일, 날짜
--        (5) BANK_CODE : 은행코드, 가변길이문자열 최대 20바이트, 외래키(BANK_T 테이블의 BANK_CODE 칼럼을 참조한다. BANK_T 테이블의 행이 삭제되면 해당 BANK_CODE를 참조중인 CUST_T 테이블의 행도 함께 삭제되도록 처리한다.)


-- 2. 다음 조건을 만족하는 CUST_SQ 시퀀스를 생성하시오.(5점)
--     1) 시작값 : 100
--     2) 증가값 : 1
--     3) 최댓값 : 없음
--     4) 최솟값 : 없음
--     5) 캐시 : 50개씩 캐시
--     6) 순환 : 없음
--     7) 순서 : 번호 순서대로 사용


-- 3. 다음 데이터를 BANK_T 테이블과 CUST_T 테이블에 INSERT하시오. 고객번호는 CUST_SQ 시퀀스를 이용하시오.(10점)
--    1) BANK_T 테이블
--       BANK_CODE  BANK_NAME  BANK_TEL
--       BANK001    한국은행   02-123-4567
--       BANK002    서울은행   02-321-9876
--       BANK003    경기은행   031-654-3210
--    2) CUST_T 테이블
--       CUST_NO  CUST_NAME  CUST_TEL     CUST_BORN  BANK_CODE
--       100      고길동     01011111111  95/10/05   BANK003
--       101      조수진     01022222222  98/12/17   BANK002
--       102      최보미     01033333333  02/03/05   BANK002
--       103      유서은     01044444444  05/05/08   BANK003


-- 4. 다음 지시사항대로 새로운 인덱스를 생성하시오.(5점)
--    1) 대상 테이블 : CUST_T
--    2) 대상 칼럼 : CUST_NAME
--    3) 인덱스 이름 : CUST_NAME_IX


-- 5. 현재 접속한 사용자(USER)가 소유한 인덱스 정보를 가지고 있는 데이터 사전을 조회하여 CUST_T 테이블에 존재하는 인덱스의 이름과 해당 인덱스가 설정된 칼럼 이름을 조회하시오.(5점)


-- 6. 다음 뷰를 생성하시오.(5점)
--    1) 뷰이름 : V_SEOUL_BANK
--    2) 쿼리문 : '서울은행'의 BANK_CODE, BANK_NAME, BANK_TEL 정보를 조회할 수 있는 SELECT문


-- 7. BANK_T 테이블의 모든 칼럼을 조회하시오. 모든 칼럼을 의미하는 "*"는 사용하지 마시오.(10점)
-- BANK_CODE  BANK_NAME  BANK_TEL
-- BANK001    한국은행   02-123-4567
-- BANK002    서울은행   02-321-9876
-- BANK003    경기은행   031-654-3210


-- 8. 가장 나이가 많은 고객을 조회하시오.(10점)
-- CUST_NO  CUST_NAME  CUST_TEL     CUST_BORN  BANK_CODE
-- 100      고길동     01011111111  95/10/05   BANK003


-- 9. 다음과 같이 조회하시오.(10점)
-- CUST_NO  CUST_NAME  CUST_TEL     CUST_BORN  BANK_NAME
-- 100      고길동     01011111111  95/10/05   경기은행
-- 101      조수진     01022222222  98/12/17   서울은행
-- 102      최보미     01033333333  02/03/05   서울은행
-- 103      유서은     01044444444  05/05/08   경기은행


-- 10. 다음과 같이 조회하시오.(10점)
-- BANK_CODE  BANK_NAME  BANK_TEL      CUST_COUNT
-- BANK001    한국은행   02-123-4567   0
-- BANK002    서울은행   02-321-9876   2
-- BANK003    경기은행   031-654-3210  2

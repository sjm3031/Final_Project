# Final_Project
KOSTA 200기 3팀 파이널 프로젝트

# 2020-07-07 (화)
## security-context.xml 생성
큰 틀 완성, 추가적인 작업 필요

# 2020-07-08 (수)
## security-context.xml 수정
1. form-login, logout 태그 미완성
2. customerAuthenticationService 부 ref="sqlSession"을 참조하지 못함 -> 내일 해결

## Mapper, Model, Service 단 완성
### Mapper
1. customerMapper.xml 생성

### Model
1. CustomerDTO, CustomerDAO, CustomerDAOImpl 생성

### Service
1. CustomerAuthenticationService - 로그인 인증 구현 서비스
2. CustomerDeniedHandler - 접근 제한 핸들러
3. CustomerLoginFailureHandler - 로그인 실패 시 핸들링
4. CustomerLoginSuccessHandler - 로그인 성공 시 핸들링
5. ShaEncoder - Sha-256 방식의 암호화 클래스

# 2020-07-13(월)
## security-context.xml 수정
1. form-login, logout 태그 완성
2. Admin계정 하나만 필요하여 In-memory 방식으로 인증하도록 설정
2. customerAuthenticationService 부 ref="sqlSession"을 참조하지 못함 --> 해결 완료
3. 로그인, 로그아웃, 권한 설정 완료
4. 로그아웃 후 뒤로가기 버튼 눌렀을때 로그인 페이지로 이동하게 설정

## Mapper, Model 삭제
## Service
1. 기존 Customer~~ 서비스, 핸들러 삭제
2. PosLoginFailureHandler - 로그인 실패시 핸들링
3. PosDeniedHandler - 비정상 접근 제한 핸들러 --> 미완성

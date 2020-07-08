# Final_Project
KOSTA 200기 3팀 파이널 프로젝트

# 2020-07-07 (화)
## security-context.xml 생성
큰 틀 완성, 추가적인 작업 필요

# 2020-07-08 (수)
## security-context.xml 수정
form-login, logout 태그 미완성
customerAuthenticationService 부 ref="sqlSession"을 참조하지 못함 -> 내일 해결

## Mapper, Model, Service 단 완성
### Mapper
customerMapper.xml 생성

### Model
CustomerDTO, CustomerDAO, CustomerDAOImpl 생성

### Service
CustomerAuthenticationService : 로그인 인증 구현 서비스
CustomerDeniedHandler : 접근 제한 핸들러
CustomerLoginFailureHandler : 로그인 실패 시 핸들링
CustomerLoginSuccessHandler : 로그인 성공 시 핸들링
ShaEncoder : Sha-256 방식의 암호화 클래스

# 사용자 추가 
## sudo를 앞에 입력해야, 루트(관리자)계정의 힘을 빌린다
sudo useradd 사용자명

# 패스워드 지정
sudo passwd 패스워드

# 사용자 목록 조회
cat /etc/passwd

# 사용자전환 : 비밀번호는 전환하고자 하는 사용자비밀번호
su - 사용자명

# 파일 권한을 갖고있는 유저의 종류 각 의미
# 000 000 000 -> 총 9자리가 존재
# 000(user) 000(group) 000(others) 
# 각 알파벳에 대한 의미 (read:4 / write:2 / x실행:1)
7 # 읽기, 쓰기, 실행 권한을 모두 갖는 7(4+2+1)
5 # 읽기와 실행 권한을 갖는 5(4+1)
4 # 읽기만 가능한 4

# 파일 권한 관리
chmod 777 test.sh # sh파일은 실행이 불가한 파일
## user에게 7, group에게 7, others에게 7이 부여가 된 상황
chmod u+x test.sh # user에게 실행권한 부여하겠다 의미
chmod g+x test.sh # group에게 실행권한을 부여하겠다 의미

# 폴더 접근권한
chmod 755 디렉토리명 #디렉토리에 접근하기위한 최소 권한은 755부터 시작한다.

# 파일 user/group 관리
# 파일 소유자 그룹 관리
sudo chown 변경전소유자:변경할사용자 대상파일
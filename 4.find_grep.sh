# 문자열 검색 : grep
grep -rni "hello"
ps -ef | grep "nginx"

# 파일 또는 디렉토리 검색 : find
find . -name "*.sh"

# 파일 검색 후 결과에서 원하는 문자열 찾을 때
# xargs : 넘겨온 파일목록을 한줄한줄 읽겠다라는 의미
find . -name "*.sh" | xargs grep -n "hello"

# exec 옵션을 통한 find와 grep
find . -name "*.sh" -exec grep -n "hello" {} \; 
find . -name "조건" -exec 결과로_실행할_내용 {} \; #여기서 결과로~ 부분에는 echo 나 grep 등을 입력할 수 있음!
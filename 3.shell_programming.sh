# script 파일 생성
touch myscript.sh
nano myscript.sh

#### 실습내용 시작

echo "script start"
틸트연산자
mkdir /home/my_dir4
cd /home/my_dir4
touch file1.txt
touch file2.txt
echo "hello file1" > file1.txt
echo "hello file2" > file2.txt
cp file1.txt file1_backup.txt
mv file2.txt file2_rename.txt

echo "script end"

#### 실습내용 끝

# if문
if [ 1 -gt 2 ]; then
    echo "참 실행"
else 
    echo "거짓 실행"
fi

# if문과 변수활용, 파일(-f)/디렉토리(-d) 존재여부 확인
file_name="파일명"
if [ -f "$file_name" ]; then
    echo "$file_name exists"
else
    echo "$file_name dose not exist"
fi

# for문 기본
for a in {1..100}
do
    echo "hello world $a"
done

# for문 활용한 count 세기
count=0
for a in {1..100}
do 
    ((count++)) ## 소괄호 2개 필수
done
echo "count is $count"

# for문 활용한 모든 파일, directofy 목록 출력하기
for a in *
do
    echo "a is $a"
done

# for문 활용한 file의 개수와 directory의 개수세기
file_count=0
dir_count=0
some_count=0

for a in *
do
    if [ -f "$a" ]; then
        ((file_count++)) 
    else if [ -d "$a" ]; then
        ((dir_count++))
    else
        ((some_count++))
    fi
done

echo "file_count: $file_count"
echo "dir_count : $dir_counts"
echo "some_count : $some_count"
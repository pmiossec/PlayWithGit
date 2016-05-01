git init .
git config user.name "John doe"
git config user.email "noreply@johndoe.com"

git checkout master
git reset --hard initial
del demo_main_file.txt
del demo_feature1.txt
del demo_feature2.txt
git branch -D feature1
git branch -D feature2

call:commit "C0" '12:00:00'
git tag initial

echo "1.master" >> demo_main_file.txt
call:commit "C1" '12:01:00' 

echo "2.master" >> demo_main_file.txt
call:commit "C2" '12:02:00' 

git branch feature1

echo "3.master" >> demo_main_file.txt
call:commit "C3" '12:03:00' 

echo "4.master" >> demo_main_file.txt
call:commit "C4" '12:04:00' 

git checkout feature1

echo "1.feature1" >> demo_feature1.txt
call:commit "C F1.1" '12:05:00' 

echo "2.feature1" >> demo_feature1.txt
call:commit "C F1.2" '12:06:00' 

git branch feature2

echo "3.feature1" >> demo_feature1.txt
call:commit "C F1.3" '12:07:00'

echo "4.feature1" >> demo_feature1.txt
call:commit "C F1.4" '12:08:00' 

git checkout feature2

echo "1.feature2" >> demo_feature2.txt
call:commit "C F2.1" '12:09:00' 

echo "2.feature2" >> demo_feature2.txt
call:commit "C F2.2" '12:10:00' 

git checkout master

git remote add origin https://github.com/pmiossec/PlayWithGit.git
git push origin --all --force

:commit
git add .
set GIT_AUTHOR_DATE="Sun May 01 %~2 2016 -0000"
set GIT_COMMITTER_DATE="Sun May 01 %~2 2016 -0000"
git commit -a -m "%~1"
GOTO:EOF
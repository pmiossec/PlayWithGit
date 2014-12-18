git init .

git checkout master
git reset --hard initial
del file1.txt
del feature1.txt
del feature2.txt
del other_file.txt
git branch -D feature1
git branch -D feature2

git add .
git commit -a -m "C0"
git tag initial

echo "1.master" >> file1.txt
git add .
git commit -a -m "C1"

timeout /t 1
echo "2.master" >> file1.txt
git add .
git commit -a -m "C2"
timeout /t 1

git branch feature1

echo "3.master" >> file1.txt
git add .
git commit -a -m "C3"
timeout /t 1

echo "4.master" >> file1.txt
git add .
git commit -a -m "C4"
timeout /t 1

git checkout feature1

echo "1.feature1" >> feature1.txt
git add .
git commit -a -m "C F1.1"
timeout /t 1

echo "2.feature1" >> feature1.txt
git add .
git commit -a -m "C F1.2"
timeout /t 1

git branch feature2

echo "3.feature1" >> feature1.txt
git add .
git commit -a -m "C F1.3"
timeout /t 1

echo "4.feature1" >> feature1.txt
git add .
git commit -a -m "C F1.4"
timeout /t 1

git checkout feature2

echo "1.feature2" >> feature2.txt
git add .
git commit -a -m "C F2.1"
timeout /t 1

echo "2.feature2" >> feature2.txt
git add .
git commit -a -m "C F2.2"

git checkout master

@echo off
echo "-------Begin-------"
git status
echo;

git add .
set  /p  msg=comment\
echo;

git commit -m "%msg%"
echo;

git pull
git push
echo Successful!
echo;

echo "--------End!--------"
pause


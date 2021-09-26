@echo off
echo "-------Begin-------"
git status
set  /p  msg=Please enter your comment:
git add .
git commit -m "%msg%"
git pull
git push
echo Successful£º[[ %msg% ]]
echo "--------End!--------"
pause


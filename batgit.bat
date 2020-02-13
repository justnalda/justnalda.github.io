@echo off

echo filename is : %* 
set /p chk=correct ? (Y/N)
echo %chk%

IF /i "%chk%" == "y" (
 goto COMMIT 
) ELSE (
 goto QUIT
)

:COMMIT
git init
git pull
git add %*
set /p commitMessage="commit message : "
git commit -m %commitMessage%
git push

:QUIT
exit /b


@echo off
echo Hello World
pause


@echo off
set /p a=Enter First Number:
set /p b=Enter Second Number:

set /a sum=%a%+%b%

echo Sum = %sum%
pause



@echo off
set /p a=Enter First Number:
set /p b=Enter Second Number:

if %a% GTR %b% (
    echo %a% is Greater
) else (
    echo %b% is Greater
)

pause




Sto check the even odd number:
@echo off
set /p n=Enter Number:

set /a rem=%n%%%2

if %rem%==0 (
    echo Even Number
) else (
    echo Odd Number
)

pause



@echo off
echo ===== SIMPLE CALCULATOR =====

set /p a=Enter First Number:
set /p b=Enter Second Number:

echo.
echo 1. Addition
echo 2. Subtraction
echo 3. Multiplication
echo 4. Division

set /p ch=Enter Your Choice (1-4):

if %ch%==1 (
    set /a ans=%a%+%b%
    echo Result = %ans%
)

if %ch%==2 (
    set /a ans=%a%-%b%
    echo Result = %ans%
)

if %ch%==3 (
    set /a ans=%a%*%b%
    echo Result = %ans%
)

if %ch%==4 (
    if %b%==0 (
        echo Division by Zero is not allowed.
    ) else (
        set /a ans=%a%/%b%
        echo Result = %ans%
    )
)

pause


#pelidrome number

@echo off
setlocal EnableDelayedExpansion

set /p num=Enter a Number:

set temp=%num%
set rev=

:loop
if "%temp%"=="" goto check
set rev=!temp:~-1!!rev!
set temp=!temp:~0,-1!
goto loop

:check
if "%num%"=="%rev%" (
    echo %num% is a Palindrome.
) else (
    echo %num% is NOT a Palindrome.
)

pause




@echo off

:start
cls
echo Player (1) or Player (2) start?
echo.

set startInput=
set /p startInput=Answer: 

if /I "%startInput%"=="1" goto player1
if /I "%startInput%"=="2" goto player2
goto start

:player1
cls
echo Player 1:
echo (R)ock, (P)aper or (S)cissors?
echo.

set player1Input=
set /p player1Input=Answer: 

if /I "%player1Input%"=="R" set player1Choice=Rock
if /I "%player1Input%"=="P" set player1Choice=Paper
if /I "%player1Input%"=="S" set player1Choice=Scissors

if /I "%startInput%"=="1" goto player2

if /I "%startInput%"=="2" goto Results

:player2
cls
echo Player 2:
echo (R)ock, (P)aper or (S)cissors?
echo.

set player2Input=
set /p player2Input=Answer: 

if /I "%player2Input%"=="R" set player2Choice=Rock
if /I "%player2Input%"=="P" set player2Choice=Paper
if /I "%player2Input%"=="S" set player2Choice=Scissors

if /I "%startInput%"=="2" goto player1

if /I "%startInput%"=="1" goto Results

:results
::DRAW RESULT::
if /I "%player1Input%"=="%player2input%" (
	cls
	echo P1: %player1Choice%, P2: %player2Choice%,
	echo Its a draw!
	pause
	goto start
)

::P1 WIN RESULT::

if /I "%player1Input%"=="P" if /I "%player2Input%"=="R" (
	cls
	echo P1: %player1Choice%, P2: %player2Choice%,
	echo Player 1 Wins!
	pause
	goto start
)

::P2 WIN RESULT::
if /I "%player1Input%"=="P" if /I "%player2Input%"=="P" (
	cls
	echo P1: %player1Choice%, P2: %player2Choice%,
	echo Player 2 Wins!
	pause
	goto start
)
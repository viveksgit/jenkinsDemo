REM If you terminate JUnit tests before they complete, then there will be
REM lingering Windows tasks clogging up your machine.
REM Run this to clear them.

taskkill /IM chromedriver.exe /F
pause
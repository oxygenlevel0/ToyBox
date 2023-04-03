@echo off

start chrome_proxy.exe^
    --user-data-dir=C:\Users\ryuji\guraburu^
    --profile-directory="Profile 1"^
    --window-size=336,632^
    --window-position=1580,408^
    --app="https://game.granbluefantasy.jp/#mypage"

timeout /t 1 /nobreak >nul
sendkeys /active [Ctrl]p

@echo off

start chrome_proxy.exe^
    --user-data-dir = C:\Users\hoge\hoge^
    --profile-directory = "Profile hoge"^
    --window-size = hoge,hoge^
    --window-position = hoge,hoge^
    --app = "https://game.granbluefantasy.jp/#mypage"

:: pause.exe使用
timeout /t 1 /nobreak >nul
sendkeys /active [Ctrl]p

@echo off

:: コマンドプロンプトを最小化して起動する
if not "%~0" == "%~dp0.\%~nx0" (
    start /min cmd /c,"%~dp0.\%~nx0" %*
    exit
)

start chrome_proxy.exe^
    --user-data-dir = C:\Users\hoge\hoge^
    --profile-directory = "Profile hoge"^
    --window-size = hoge,hoge^
    --window-position = hoge,hoge^
    --app = "https://game.granbluefantasy.jp/#mypage"

timeout /t 1 /nobreak >nul
sendkeys /active [Ctrl]p
exit

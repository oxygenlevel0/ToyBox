@echo off

:: コマンドプロンプトを最小化して起動
if not "%Hoge%"=="hoge" (
    set "Hoge=hoge"
    start /min cmd /c,"%~0" %*
    exit
)

:: Chromeを起動(2行目からはオプション)
start chrome.exe^
    --user-data-dir=C:\Users\hoge\hoge^
    --profile-directory="Profile hoge"^
    --window-size=336,632^
    --window-position=1580,408^
    --app="https://game.granbluefantasy.jp/#mypage"

    ::Chromeが起動するまで待つ
    timeout /t 1 /nobreak >nul
    sendkeys /active pause

:: pauseを送信するまで待つ
timeout /t 2 /nobreak >nul
:: Chromeを起動(2行目からはオプション)
start chrome.exe^
    --user-data-dir="C:\Users\hoge\AppData\Local\Google\Chrome\User Data"^
    --window-size=1572,920

:: エクスプローラーを起動
start explorer.exe

:: BlueStacksを32bitで起動
"C:\Program Files\BlueStacks_nxt\HD-Player.exe"^
    --instance Nougat32

exit

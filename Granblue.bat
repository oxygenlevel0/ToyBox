@echo off

:: コマンドプロンプトを最小化して起動
if not "%Gran%"=="Djeeta" (
    set Gran=Djeeta
    start /min cmd /c,"%~0" %*
    exit
)

:: Chromeを起動(2行目からはオプション)
start chrome.exe^
    --user-data-dir=C:\Users\hoge\hoge^
    --profile-directory="Profile hoge"^
    --window-size=hoge,hoge^
    --window-position=hoge,hoge^
    --app="https://game.granbluefantasy.jp/#mypage"

    ::Chromeが起動するまで待つ
    timeout /t 1 /nobreak >nul
    :: SendKeysでPause.exeのショートカットを送信
    sendkeys /active pause

exit

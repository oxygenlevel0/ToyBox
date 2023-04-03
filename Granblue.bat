@echo off

:: コマンドプロンプトを最小化して起動する
if not "%Gran%" == "Djeeta" (
    set Gran = Djeeta
    start /min cmd /c,"%~0" %*
    exit
)

:: Chromeを起動(2行目からはオプション)
start chrome_proxy.exe^
    --user-data-dir = C:\Users\hoge\hoge^
    --profile-directory = "Profile hoge"^
    --window-size = hoge,hoge^
    --window-position = hoge,hoge^
    --app = "https://game.granbluefantasy.jp/#mypage"

timeout /t 1 /nobreak >nul
:: SendKeysでPause.exeのショートカットを送信
sendkeys /active pause
exit

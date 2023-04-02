:: このファイルはShift_JISでエンコードしてください
@echo off
title minecraft_forge_server

:: キー入力で分岐
:: Y,N以外のキー入力は無視される
choice /c YN /n /t int /d N /m "サーバー開始しますか? [Y,N]"
    if /i %errorlevel% == 1 goto Select_Y
    if /i %errorlevel% == 2 goto Select_N

:Select_Y
    cls
    :: 1.Java呼び出し
    :: 2.forgeサーバー実行
    "C:\Program Files\Java\jreVersion\bin\java"^
        -XmxintG -server -jar minecraft_server.version.jar nogui
    goto Select_N

:Select_N
    cls
    :: 3秒カウントダウン
    for /l %%a in (3,-1,1) do (
        echo %%a秒後に終了します。今までありがとう……
        timeout /t 1 /nobreak >nul
        cls
    )
    exit

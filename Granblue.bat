@echo off

start chrome_proxy.exe ^

--user-data-dir=C:\Users\hoge\hoge ^
--profile-directory	= "Profile 1" ^
--window-size = int,int ^
--window-position =	int,int ^
--app = "https://game.granbluefantasy.jp/#mypage"

:: sleep.exe,最前面でポーズ使用
sleep int
sendkeys /active [Ctrl]p
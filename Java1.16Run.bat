:: ���̃t�@�C����Shift_JIS�ŃG���R�[�h���Ă�������
@echo off
title minecraft_forge_server

:: �L�[���͂ŕ���
:: Y,N�ȊO�̃L�[���͖͂��������
choice /c YN /n /t int /d N /m "�T�[�o�[�J�n���܂���? [Y,N]"
    if /i %errorlevel% == 1 goto Select_Y
    if /i %errorlevel% == 2 goto Select_N

:Select_Y
    cls
    :: 1.Java�Ăяo��
        :: 2.JVM�����Ăяo��
        :: 3.forge�T�[�o�[���s
    "C:\Program Files\Java\jdk-version\bin\java.exe"^
        @user_jvm_args.txt^
        @libraries/net/minecraftforge/forge/version/win_args.txt^
        nogui %*
    goto Select_N

:Select_N
    cls
    :: 3�b�J�E���g�_�E��
    for /l %%a in (3,-1,1) do (
        echo %%a�b��ɏI�����܂��B���܂ł��肪�Ƃ��c�c
        timeout /t 1 /nobreak >nul
        cls
    )
    exit
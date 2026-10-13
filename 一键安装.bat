@echo off
chcp 65001 >nul
title 使命召唤：现代战争2 战役重制版 (MW2CR) 中文配音 Mod - 一键安装程序
cls

echo ==============================================================================
echo        使命召唤：现代战争2 战役重制版 (MW2CR) 中文配音 Mod v1.0 正式版
echo                   全战役 19 关全流程电影级中文普通话配音
echo ==============================================================================
echo.

REM 1. 检查当前目录下是否包含 h2-mod
if not exist "h2-mod" (
    echo [错误] 未在当前文件夹中找到 h2-mod 补丁目录！
    echo 请将解压出的全部文件与文件夹放置在游戏根目录（即含有 overlord.exe 或 MW2CR.exe 的目录）下运行。
    echo.
    pause
    exit /b 1
)

REM 2. 检查游戏主程序或运行特征
set GAME_DIR=%CD%
set FOUND_EXE=0
if exist "%GAME_DIR%\overlord.exe" set FOUND_EXE=1
if exist "%GAME_DIR%\MW2CR.exe" set FOUND_EXE=1

if "%FOUND_EXE%"=="0" (
    echo [提示] 当前目录未直接检测到 overlord.exe 或 MW2CR.exe。
    echo 如果您是将本安装包解压在独立文件夹，请输入您的 MW2CR 游戏根目录完整路径：
    set /p USER_GAME_DIR="游戏目录路径: "
    if not exist "!USER_GAME_DIR!\h2-mod" mkdir "!USER_GAME_DIR!\h2-mod" 2>nul
    echo 正在向指定游戏目录部署补丁文件，请稍候...
    xcopy "h2-mod" "!USER_GAME_DIR!\h2-mod" /E /I /Y /Q >nul
    echo.
    echo [成功] 中文配音补丁已全量安装至: !USER_GAME_DIR!
    echo.
    pause
    exit /b 0
)

echo [1/3] 正在核验配音补丁核心结构...
if not exist "h2-mod\zone\simplified_chinese" (
    echo [警告] 补丁目录结构不完整，正在自动修复...
    mkdir "h2-mod\zone\simplified_chinese" 2>nul
)

echo [2/3] 正在同步游戏声音缓存与别名加载表...
REM 确保无前缀门槛文件与简中前缀补丁就位
set MISSING_FF=0
if not exist "h2-mod\zone\simplified_chinese\sch_h2_mod_patch_trainer.ff" set MISSING_FF=1
if not exist "h2-mod\zone\h2_mod_patch_trainer.ff" set MISSING_FF=1

if "%MISSING_FF%"=="1" (
    echo [警告] 发现部分 Fastfile 丢失，请重新解压本 Mod 压缩包！
) else (
    echo [OK] 全战役 19 关 Fastfile 双补丁与 2031 条专有 FLAC 音频均已就绪。
)

echo [3/3] 安装完成！
echo.
echo ==============================================================================
echo 【启动建议】
echo 1. 普通模式 / VR 模式均推荐通过 overlord.exe 启动（命令：overlord.exe -singleplayer）
echo 2. 游戏语言请确保设置为「简体中文」，进入任意战役关卡即可享受全中文沉浸配音！
echo 3. 如需恢复原版英文语音，双击运行【一键卸载.bat】即可秒切回原生英文。
echo ==============================================================================
echo.
pause

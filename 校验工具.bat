@echo off
chcp 65001 >nul
title 使命召唤：现代战争2 战役重制版 (MW2CR) 中文配音 Mod - 完整性校验工具
cls

echo ==============================================================================
echo        使命召唤：现代战争2 战役重制版 (MW2CR) 中文配音 Mod - 完整性快速校验
echo ==============================================================================
echo.

where certutil >nul 2>nul
if %errorlevel% neq 0 (
    echo [错误] 系统缺少 certutil 工具，无法进行哈希校对。
    pause
    exit /b 1
)

echo 正在快速检查关键 Fastfile 与音频核心索引...
set FAIL_COUNT=0

if not exist "h2-mod\zone\simplified_chinese\sch_h2_mod_patch_trainer.ff" (
    echo [缺失] sch_h2_mod_patch_trainer.ff
    set /a FAIL_COUNT+=1
)
if not exist "h2-mod\zone\h2_mod_patch_trainer.ff" (
    echo [缺失] h2_mod_patch_trainer.ff
    set /a FAIL_COUNT+=1
)
if not exist "h2-mod\zone\simplified_chinese\sch_h2_mod_patch_ending.ff" (
    echo [缺失] sch_h2_mod_patch_ending.ff
    set /a FAIL_COUNT+=1
)
if not exist "h2-mod\simplified_chinese\sound\voiceovers\train\train_fly_welcome.flac" (
    echo [缺失] train_fly_welcome.flac
    set /a FAIL_COUNT+=1
)

if %FAIL_COUNT% equ 0 (
    echo.
    echo [校验通过] 核心补丁文件完整无缺，您可以放心进入游戏游玩！
) else (
    echo.
    echo [校验失败] 发现 %FAIL_COUNT% 个关键文件缺失，请重新解压覆盖！
)

echo.
pause

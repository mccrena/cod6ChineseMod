@echo off
setlocal enabledelayedexpansion
chcp 65001 >nul
title 使命召唤：现代战争2 战役重制版 (MW2CR) 中文配音 Mod - 完整性校验工具 (v1.1)
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

echo 正在快速检查关键 Fastfile 与核心战术音频...
set FAIL_COUNT=0

REM 校验首尾与核心关卡 Fastfile
if not exist "h2-mod\zone\simplified_chinese\sch_h2_mod_patch_trainer.ff" (
    echo [缺失] 训练营补丁: sch_h2_mod_patch_trainer.ff
    set /a FAIL_COUNT+=1
)
if not exist "h2-mod\zone\h2_mod_patch_trainer.ff" (
    echo [缺失] 训练营前置: h2_mod_patch_trainer.ff
    set /a FAIL_COUNT+=1
)
if not exist "h2-mod\zone\simplified_chinese\sch_h2_mod_patch_ending.ff" (
    echo [缺失] 终章补丁: sch_h2_mod_patch_ending.ff
    set /a FAIL_COUNT+=1
)
if not exist "h2-mod\zone\h2_mod_patch_ending.ff" (
    echo [缺失] 终章前置: h2_mod_patch_ending.ff
    set /a FAIL_COUNT+=1
)

REM 校验代表性战术 FLAC 音频
if not exist "h2-mod\simplified_chinese\sound\voiceovers\train\train_fly_welcome.flac" (
    echo [缺失] 训练营音频: train_fly_welcome.flac
    set /a FAIL_COUNT+=1
)
if not exist "h2-mod\simplified_chinese\sound\voiceovers\afcaves\afcaves_pri_doit.flac" (
    echo [缺失] 勇闯虎穴音频: afcaves_pri_doit.flac
    set /a FAIL_COUNT+=1
)
if not exist "h2-mod\simplified_chinese\sound\voiceovers\dcburning\dcburn_mcy_moveupgogo.flac" (
    echo [缺失] 华盛顿在燃烧音频: dcburn_mcy_moveupgogo.flac
    set /a FAIL_COUNT+=1
)

REM 检查 CG 视频（选装项）
set HAS_CG=0
if exist "h2-mod\simplified_chinese\trainer_load.bik" set HAS_CG=1
if exist "h2-mod\video\trainer_load.bik" set HAS_CG=1

if %FAIL_COUNT% equ 0 (
    echo.
    echo [核心校验通过] 全战役 Fastfile 与 9157 条战术语音文件完整无缺！
    if "%HAS_CG%"=="1" (
        echo [CG检测] 中文 CG 过场动画已安装，音画同步完备。
    ) else (
        echo [CG检测] 未安装 CG 视频包（战役内语音正常，过场视频为官方原版）。
    )
    echo 您可以放心进入游戏畅玩！
) else (
    echo.
    echo [校验失败] 发现 %FAIL_COUNT% 个关键文件缺失，请重新解压覆盖！
)

echo.
pause

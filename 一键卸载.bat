@echo off
setlocal enabledelayedexpansion
chcp 65001 >nul
title 使命召唤：现代战争2 战役重制版 (MW2CR) 中文配音 Mod - 一键卸载程序
cls

echo ==============================================================================
echo        使命召唤：现代战争2 战役重制版 (MW2CR) 中文配音 Mod - 一键卸载
echo ==============================================================================
echo.
echo 正在安全移除中文配音补丁与 Fastfile 文件...
echo （本操作绝不会修改或删除任何游戏原生官方 .pak 数据文件）
echo.

REM 1. 移除 Fastfile 双补丁
if exist "h2-mod\zone" (
    echo [1/4] 正在清理 Fastfile 双补丁...
    for %%f in ("h2-mod\zone\h2_mod_patch_*.ff") do del /f /q "%%f" 2>nul
    if exist "h2-mod\zone\simplified_chinese" (
        for %%f in ("h2-mod\zone\simplified_chinese\sch_h2_mod_patch_*.ff") do del /f /q "%%f" 2>nul
    )
    if exist "h2-mod\zone\english" (
        for %%f in ("h2-mod\zone\english\eng_h2_mod_patch_*.ff") do del /f /q "%%f" 2>nul
    )
)

REM 2. 移除简体中文专有 FLAC 战术对白音频
if exist "h2-mod\simplified_chinese\sound\voiceovers" (
    echo [2/4] 正在移除全战役 9157 条中文 FLAC 音频...
    rd /s /q "h2-mod\simplified_chinese\sound\voiceovers" 2>nul
)

REM 3. 清理旧版历史可能残留的 english/sound/voiceovers
if exist "h2-mod\english\sound\voiceovers" (
    echo [3/4] 正在清理旧版语音缓存...
    rd /s /q "h2-mod\english\sound\voiceovers" 2>nul
)

REM 4. 移除中文 CG 视频（若已安装）
echo [4/4] 正在检查并清理中文 CG 视频...
set CG_LIST=af_caves_load af_chase_load airport_load arcadia_load boneyard_load cliffhanger_load contingency_load dcemp_load estate_load favela_escape_load favela_load gulag_load intro_credits_load invasion_load oilrig_load roadkill_load trainer_load
for %%m in (%CG_LIST%) do (
    if exist "h2-mod\simplified_chinese\%%m.bik" del /f /q "h2-mod\simplified_chinese\%%m.bik" 2>nul
    if exist "h2-mod\simplified_chinese\%%m" del /f /q "h2-mod\simplified_chinese\%%m" 2>nul
    if exist "h2-mod\video\%%m.bik" del /f /q "h2-mod\video\%%m.bik" 2>nul
    if exist "h2-mod\video\simplified_chinese\%%m.bik" del /f /q "h2-mod\video\simplified_chinese\%%m.bik" 2>nul
    if exist "h2-mod\simplified_chinese\video\%%m.bik" del /f /q "h2-mod\simplified_chinese\video\%%m.bik" 2>nul
    if exist "h2-mod\%%m.bik" del /f /q "h2-mod\%%m.bik" 2>nul
    if exist "h2-mod\%%m" del /f /q "h2-mod\%%m" 2>nul
)

echo.
echo ==============================================================================
echo [卸载完成] 中文配音补丁已全部安全清理完毕！
echo 游戏已无损还原为原版英文状态。
echo ==============================================================================
echo.
pause

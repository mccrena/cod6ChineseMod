# MW2CR 中文配音 Mod 详细安装与配置指南

本文档提供详细的目录定位、安装步骤与各类特殊环境（VR / 学习版 / 战网版）的排错说明。

---

## 一、 快速定位游戏根目录

请确保将本 Mod 放入**游戏根目录**：
- **特征标识**：该文件夹中必须包含 `MW2CR.exe`、`overlord.exe`、`soundfile1.pak` 等原生文件。
- **典型路径示例**：
  - `E:\game\Call Of Duty Modern Warfare 2 Campaign Remastered\Call Of Duty Modern Warfare 2 Campaign Remastered\`
  - `D:\Games\Call of Duty Modern Warfare 2 Campaign Remastered\`

---

## 二、 安装步骤

1. 将解压出来的文件夹内容（`h2-mod` 文件夹、`一键安装.bat` 等）直接复制到上述游戏根目录。
2. 双击运行 `一键安装.bat`，根据提示按回车完成注入。
3. 检查游戏根目录下的 `h2-mod` 文件夹，应呈现以下结构：
   ```text
   <游戏根目录>/
   ├── h2-mod/
   │   ├── zone/
   │   │   ├── h2_mod_patch_trainer.ff
   │   │   ├── h2_mod_patch_cliffhanger.ff
   │   │   ├── ... (全部 19 个门槛文件)
   │   │   └── simplified_chinese/
   │   │       ├── sch_h2_mod_patch_trainer.ff
   │   │       ├── sch_h2_mod_patch_cliffhanger.ff
   │   │       └── ... (全部 19 个简中 Fastfile)
   │   └── simplified_chinese/
   │       └── sound/
   │           └── voiceovers/
   │               ├── train/*.flac
   │               ├── cliff/*.flac
   │               └── ... (全部 2031 个音频文件)
   ├── 一键安装.bat
   └── 一键卸载.bat
   ```

---

## 三、 Overlord VR Mod 用户特别说明

如果您正在搭配 Overlord VR Mod 游玩：
1. 本中文配音 Mod 与 Overlord VR Mod **完全兼容、无需额外设置**。
2. 保持日常启动 VR Mod 的方式不变（佩戴头显并运行 `overlord.exe`）。
3. 中文战术语音将通过 OpenXR 空间音频系统直接传递至头显耳机中。

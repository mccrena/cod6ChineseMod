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

## 三、 运行模式说明（普通原版 与 VR 模式通用）

本 Mod 采用统一的 `h2-mod` 外挂虚拟文件系统架构，**对普通原版和 VR 模式完全通用**：
- **普通原版（常规显示器游玩，无 VR Mod）**：按照您原有的方式直接启动游戏即可（通过客户端、快捷方式或启动程序），补丁会自动在战役中挂载中文配音。
- **Overlord VR 模式（虚拟现实头显游玩）**：完全兼容且无需额外设置。Overlord VR Mod 由原作者 [Aeka0](https://github.com/Aeka0/Overlord) 独立开发维护，本配音 Mod 不附带其二进制文件；VR 玩家请先按 Overlord 官方指引完成 VR 基础环境部署，随后将本 Mod 安装至同一游戏根目录，按日常习惯佩戴头显并运行 `overlord.exe`，战术对白与无线电将通过空间音频无缝传递至 VR 头显耳机中。

---

## 四、 Beta 测试版已知排错与建议

1. **游戏语言要求**：游戏界面必须是 **简体中文**（Settings/选项中切换），如果为其他语言界面，引擎不会加载简体中文语音补丁。
2. **静音或偶发卡顿排查**：
   - 确认解压后 `h2-mod` 完整存在于游戏根目录下；
   - 确认没有杀毒软件误拦截 `.flac` 音频；
   - 建议在游戏设置中将“对话音量”拉高至 80%~100%，以获得最佳剧情体验。
3. **问题反馈与建议**：
   - 遇到任何 Bug 或台词异常，欢迎前往项目仓库提交反馈：[https://github.com/mccrena/cod6ChineseMod/issues](https://github.com/mccrena/cod6ChineseMod/issues)

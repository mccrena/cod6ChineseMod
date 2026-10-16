# MW2CR 中文配音 Mod 详细安装与配置指南 (v1.1)

本文档提供详细的目录定位、安装步骤与各类运行环境（普通原版 / Overlord VR 模式）的配置排错说明。

---

## 一、 快速定位游戏根目录

请确保将本 Mod 部署在您的 **游戏根目录**：
- **特征标识**：该文件夹中必须包含 `MW2CR.exe`、`overlord.exe`、`soundfile1.pak` 等原生游戏文件。
- **典型路径示例**：
  - `E:\game\Call Of Duty Modern Warfare 2 Campaign Remastered\Call Of Duty Modern Warfare 2 Campaign Remastered\`
  - `D:\Games\Call of Duty Modern Warfare 2 Campaign Remastered\`

---

## 二、 安装步骤

### 1. 安装核心语音包（必选）
1. 将下载的 `MW2CR_Chinese_Audio_Mod_v1.1.zip` 压缩包内容解压至上述游戏根目录。
2. 双击运行根目录下的 **`一键安装.bat`**，按提示完成语言注册表与文件校验。
3. 检查游戏根目录下的 `h2-mod` 文件夹，标准结构如下：
   ```text
   <游戏根目录>/
   ├── h2-mod/
   │   ├── zone/
   │   │   ├── h2_mod_patch_trainer.ff
   │   │   ├── ... (全 19 关前置补丁)
   │   │   └── simplified_chinese/
   │   │       ├── sch_h2_mod_patch_trainer.ff
   │   │       └── ... (全 19 关简中 Fastfile)
   │   └── simplified_chinese/
   │       └── sound/
   │           └── voiceovers/
   │               ├── train/*.flac
   │               ├── afcaves/*.flac
   │               └── ... (全部 9157 条中文 FLAC 音频)
   ├── 一键安装.bat
   ├── 一键卸载.bat
   └── 校验工具.bat
   ```

### 2. 安装 CG 视频增强包（可选）
1. 下载 `MW2CR_Chinese_CG_Pack_v1.1_Part1.zip` 与 `Part2.zip`。
2. 解压后将压缩包内的 `h2-mod` 文件夹直接复制并合并到游戏根目录下的 `h2-mod` 目录中。
3. 再次双击运行 **`一键安装.bat`**，程序会自动检测到 CG 视频并建立双向检索镜像。

---

## 三、 运行模式说明（普通原版 与 VR 模式通用）

本 Mod 采用统一的外挂虚拟文件系统规范，**对普通原版和 VR 模式完全通用**：
- **普通原版（常规显示器游玩，无 VR Mod）**：直接启动游戏（运行 `MW2CR.exe` 或原版快捷方式），游戏会自动加载全流程中文语音。
- **Overlord VR 模式（虚拟现实头显游玩）**：完全兼容。Overlord VR Mod 由原作者 [Aeka0](https://github.com/Aeka0) 独立开发维护，本配音 Mod 不分发其二进制程序；VR 玩家在配置好 Overlord 环境后，按日常方式佩戴头显并运行 `overlord.exe`，战术对白与无线电将通过空间音频无缝传递至 VR 头显中。

---

## 四、 常见问题与排错建议

1. **游戏语言要求**：游戏界面必须设为 **简体中文**（游戏设置 -> 选项 -> 语言中切换），若设为英文或繁体中文，引擎内核不会加载简中音频补丁。
2. **静音或偶发卡顿排查**：
   - 双击运行 **`校验工具.bat`** 快速检测关键文件是否完整；
   - 确认没有杀毒软件误拦截 `.flac` 音频；
   - 建议在游戏“声音”设置中将“对话音量”拉高至 85%~100%，以获得最佳战场临场感。
3. **彻底卸载与无损还原**：
   - 随时双击游戏根目录下的 **`一键卸载.bat`**，脚本将一键安全移除所有外挂 Fastfile 与 FLAC、CG 视频，游戏瞬间恢复纯官方英文原生状态。
4. **问题反馈与建议**：
   - 遇到任何 Bug 或台词异常，欢迎前往项目仓库提交反馈：[https://github.com/mccrena/cod6ChineseMod/issues](https://github.com/mccrena/cod6ChineseMod/issues)

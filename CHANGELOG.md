# 更新日志 (Changelog)

## [v1.1] - 2026-10-16

### 全战役战术语音与过场 CG 完整中文配音版 (Full Campaign & CG Audio Release)
- **战术语音全量补全（9157 条）**：语音总规模从 Beta 1.0 的 2031 条大幅扩充至 9157 条，完整收录 19 关主线战役中的所有无线电通联、临场交火战术喊话、敌军警报与环境叙事对白，全战役消除任何未翻译英语杂音。
- **17 部高清过场 CG 完整中文重配**：全流程所有任务加载与剧情过场动画（17 部 1080P/4K BIK 视频）全部实现中文普通话重制。采用声道无损隔离技术，在重置中文语音的同时，完整保留原版交响配乐、武器轰鸣与环境音效。
- **底层架构迁移与标准化**：全面规范游戏加载路径至 `h2-mod/simplified_chinese/sound/voiceovers`，重新编译 19 关 `sch_h2_mod_patch_<level>.ff` 与 `h2_mod_patch_<level>.ff` 双门槛 Fastfile，确保完美兼容游戏官方多语言内核。
- **一键批处理工具重构**：
  - `一键安装.bat`：新增 CG 视频路径探测与硬链接自动部署功能，双模式（PC 原版 / Overlord VR 模式）一键秒装。
  - `一键卸载.bat`：全面重写清理逻辑，精准清除补丁 Fastfile、FLAC 缓存与 CG 视频，无损还原游戏英文原生状态，绝不触碰任何游戏官方 pak 文件。
  - `校验工具.bat`：升级完整性抽检逻辑，覆盖首尾关键关卡补丁、典型战术音频与 CG 视频。
- **模块化发行分包**：核心语音包（~380MB）与 CG 增强包（Part1/Part2）独立分包，突破 GitHub Releases 单文件 2GB 上限，玩家可按需下载安装。

---

## [v1.0-Beta] - 2026-10-13

### 全流程里程碑达成 (Full Campaign Beta Release)
- **19 关全流程中文配音首发测试**：全战役共 2031 条独立战术语音全部完成 IndexTTS 2.5 神经声学音色克隆与时长对齐。
- **COD 引擎规范 100% 验收合规**：全部 2031 个音频文件均满足 `1024 Blocksize`、`48000Hz Mono`、`APPLICATION (fsiz)` 精确裸流校验块与 `SEEKTABLE` 寻道表结构，解决流式解码器静音问题。
- **Fastfile 双补丁编译完毕**：生成全战役 19 关 `sch_h2_mod_patch_<level>.ff` 及双门槛文件 `h2_mod_patch_<level>.ff`。
- **绿色免侵入打包与脚本**：加入全新编写的 `一键安装.bat`、`一键卸载.bat` 与 `校验工具.bat`，全面通用适配普通原版与 Overlord VR 模式。

---

## [v0.19-campaign] - 2026-10-12
- 完成 Act III 终章 4 关（`boneyard`, `af_caves`, `af_chase`, `ending`）的中文合成与测试。

## [v0.14-campaign] - 2026-10-12
- 完成华盛顿战役高潮（`dcburning`, `contingency`, `dcemp`, `dc_whitehouse`, `estate`）中文配音。

## [v0.8-campaign] - 2026-10-12
- 完成 Act I 剧情前半程（`cliffhanger`, `airport`, `favela`, `favela_escape`, `invasion`, `arcadia`）。

## [v0.1-preview] - 2026-10-12
- 首发技术预览版：首关 `trainer`（训练营）143 条中文对白实机发声验证通过，突破 COD 流式 FLAC 1024 分块与 fsiz 注入机制。

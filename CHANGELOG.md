# 更新日志 (Changelog)

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

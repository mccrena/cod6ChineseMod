# 《使命召唤：现代战争2 战役重制版》全流程中文普通话配音 Mod

![MW2CR Chinese Audio Mod](https://img.shields.io/badge/MW2CR-Chinese%20Audio%20Mod-red?style=for-the-badge&logo=activision)
![Release](https://img.shields.io/badge/Release-v1.0--Beta-yellow?style=for-the-badge)
![Campaign](https://img.shields.io/badge/Campaign-19%20Levels%20(100%25)-blue?style=for-the-badge)
![Voices](https://img.shields.io/badge/Dialogues-2031%20Lines-orange?style=for-the-badge)
![Compatibility](https://img.shields.io/badge/Mode-PC%20Vanilla%20%7C%20Overlord%20VR-green?style=for-the-badge)

本 Mod 为 PC 版 **《使命召唤：现代战争2 战役重制版》（Call of Duty: Modern Warfare 2 Campaign Remastered / MW2CR）** 带来全流程中文普通话配音。

本项目为**个人独立技术制作**，基于本地神经声学 AI（IndexTTS 2.5）管线完成全战役 19 关角色的音色克隆与时长校准。无论您是体验 **普通原版战役（无 VR Mod，常规显示器游玩）** 还是搭配 **Overlord VR Mod（虚拟现实头显沉浸游玩）**，均可实现告别频繁看字幕的疲惫，尽情沉浸于现代战争宏大的战术对白与剧情演出中！

> ⚠️ **首发 Beta 测试版特别说明**：  
> 本 Mod 目前为 **Beta 1.0 首发测试版**，全流程 2031 条语音均由个人独立生成、校对与打包。  
> 受限于当前神经声学模型与个人测试精力的局限性，在某些激烈交火情境下，个别对白可能存在语气语调不自然、个别多音字发音差异、或与背景音效混音音量偶有不均等情况。  
> 本 Mod 仅供学习交流与技术验证，欢迎大家体验，如遇到任何问题或对白异常，请随时在 [GitHub Issues](https://github.com/mccrena/cod6ChineseMod/issues) 提交反馈！

---

## 🌟 核心特色与制作亮点

1. **全战役 19 关全流程覆盖（100% 完整收录）**：
   - 涵盖从序幕《训练营》、雪山《绝岭雄风》、高潮迭起的《别说俄语》与《大撤退》，到华盛顿保卫战《第二阳光》、《威士忌旅馆》，以及阿富汗最终决战《收尾工作》的**全战役 19 个关卡**。
   - 全流程精细制作并校准 **2031 条战术对白与剧情演出语音**。

2. **角色原声音色克隆（IndexTTS 2.5 神经声学引擎）**：
   - 基于动视官方原声母带切片作为音色参考，尽力还原**普莱斯上尉（Captain Price）**、**肥皂（Soap MacTavish）**、**谢菲尔德将军（General Shepherd）**、**弗利中士（Sgt. Foley）**、**邓恩下士（Cpl. Dunn）**、**马卡洛夫（Makarov）** 等经典角色的战术硬汉语气。

3. **严格时长与演出节奏对齐（避免吞字抢话）**：
   - 战役脚本中的剧情演出与无线电通信间隔高度依赖原声时长。本项目进行了全流程时长校准，最大程度贴合原版节奏，避免吞字与严重抢话。

4. **100% 匹配 COD 引擎底层流式 FLAC 规范**：
   - 遵循现代战争底层解码规范：`1024` 固定分块、48000Hz 单声道、内嵌 `APPLICATION (fsiz)` 元数据块与精确寻道表（SEEKTABLE），有效防止引擎静音或卡顿。

5. **双补丁机制与非侵入式绿色覆盖**：
   - 纯绿色补丁架构，**不改动任何官方原生 .pak 数据文件**。
   - 附带一键安装与一键卸载批处理脚本，秒装秒卸，安全绿色。

6. **全环境通用兼顾**：
   - **普通原版 PC 游戏**：原生兼容，无需安装任何前置 VR 插件。
   - **Overlord VR Mod**：原生兼容，全中文无线电与战术语音通过空间音频系统直达头显。

---

## 🎮 包含关卡清单（19 关全览）

| 关卡序号 | 关卡内部名 | 战役章节名称 | 经典场景 / 主要角色 | 对白规模 |
| :---: | :--- | :--- | :--- | :---: |
| **01** | `trainer` | 训练营 (S.S.D.D.) | 弗利中士靶场教学、邓恩 The Pit 训练场 | 142 条 |
| **02** | `roadkill` | 团队精神 (Team Player) | 阿富汗战壕突破、悍马车队巡逻 | 100 条 |
| **03** | `cliffhanger` | 绝岭雄风 (Cliffhanger) | 肥皂哈萨克斯坦雪山潜入、雪地摩托大逃亡 | 143 条 |
| **04** | `airport` | 别说俄语 (No Russian) | 扎卡耶夫国际机场卧底行动 | 49 条 |
| **05** | `favela` | 追捕 (Takedown) | 里约热内卢贫民窟罗哈斯抓捕行动 | 78 条 |
| **06** | `favela_escape` | 大黄蜂巢穴 (Hornet's Nest) | 贫民窟屋顶跑酷、直升机绳降撤离 | 66 条 |
| **07** | `invasion` | 大撤退 (Exodus) | 弗吉尼亚郊区防御战、防空阵地突袭 | 197 条 |
| **08** | `arcadia` | 迎头痛击 (The Only Easy Day... Was Yesterday) | 钻井平台人质解救潜入战 | 98 条 |
| **09** | `oilrig` | 仅存无几之日 (The Gulag) | 俄罗斯古拉格监狱外围突击 | 127 条 |
| **10** | `gulag` | 古拉格 (Of Their Own Accord) | 627 号囚徒（普莱斯）营救大暴动 | 110 条 |
| **11** | `dcburning` | 华盛顿在燃烧 (Contingency) | 华盛顿哥伦比亚特区战壕突围 | 176 条 |
| **12** | `contingency` | 突发状况 (Second Sun) | 佩特罗巴甫洛夫斯克潜艇基地核弹发射 | 160 条 |
| **13** | `dcemp` | 第二阳光 (White House) | EMP 爆发后华盛顿暴雨停电巷战 | 95 条 |
| **14** | `dc_whitehouse` | 威士忌旅馆 (Whiskey Hotel) | 白宫决死冲锋、绿信号弹决战停火 | 43 条 |
| **15** | `estate` | 毫无破绽 (Loose Ends) | 高加索马卡洛夫安全屋防守、幽灵与小强绝唱 | 147 条 |
| **16** | `boneyard` | 敌人的敌人 (The Enemy of My Enemy) | 飞机墓地三方混战逃生 | 43 条 |
| **17** | `af_caves` | 勇闯虎穴 (Just Like Old Times) | 普莱斯与肥皂突袭谢菲尔德影子部队地下基地 | 176 条 |
| **18** | `af_chase` | 收尾工作 (Endgame) | 快艇生死追逐、谢菲尔德直升机坠落 | 88 条 |
| **19** | `ending` | 终章大决战 (Epilogue/Credits) | 拔刀绝地反杀谢菲尔德、撤离信天翁战友 | 88 条 |

---

## 📥 下载与安装方法

### 📦 下载地址
请前往 GitHub Releases 页面下载最新发布的安装压缩包：  
👉 **[GitHub Releases 下载链接](https://github.com/mccrena/cod6ChineseMod/releases)**

### 推荐方法：一键安装（半分钟完成）
1. 从 Releases 下载 `MW2CR_Chinese_Audio_Mod_Beta1.0.zip`。
2. 解压该压缩包，将里面的所有内容（包含 `h2-mod` 文件夹、`一键安装.bat` 等）复制到您的 **游戏根目录**（即含有 `MW2CR.exe` 或 `overlord.exe` 的文件夹）。
3. 双击运行 **`一键安装.bat`**。
4. 启动游戏进入战役，即可听到全中文对白！

### 手动安装方法：
直接将解压出的 **`h2-mod`** 文件夹复制并合并覆盖到游戏根目录即可生效。

---

## 🗑️ 卸载方法

如果您希望随时换回官方原生英文语音：
* 双击游戏根目录下的 **`一键卸载.bat`**。
* 脚本将瞬间安全移除本 Mod 注入的文件，**绝不改动任何官方原始文件**，秒恢复原版英文。

---

## ⚙️ 游戏运行与环境说明

* **启动方式**：
  - **普通原版模式**：通过常规方式或客户端启动器启动游戏即可；
  - **VR 模式**：通过 `overlord.exe`（或其 VR 快捷方式）启动即可。
* **语言设置**：游戏启动后请确保主菜单或设置中语言为 **简体中文**（若为繁体中文或英文，引擎将跳过简中补丁）。
* **兼容性说明**：本补丁采用外挂文件系统覆盖，不修改核心主程序，与绝大多数学习版、修改器及图形增强滤镜互不冲突。

---

## ❓ 常见问题排查 (FAQ)

### Q1: 听到的是原版英文，没有变成中文？
* 请检查游戏内的语言设置是否为 **简体中文**；
* 检查补丁是否放对了位置：游戏根目录下必须存在 `h2-mod\zone\simplified_chinese\sch_h2_mod_patch_<关卡名>.ff` 与 `h2-mod\zone\h2_mod_patch_<关卡名>.ff`。

### Q2: 进入关卡后部分台词没有声音（完全静音）？
* 确认解压完整，没有被某些管家类杀毒软件误删除或拦截 `.flac` 音频；
* 检查操作系统音频输出采样率（推荐设为 48000Hz 24-bit / 16-bit）；
* 若在某一关某一句出现必定静音，请前往 GitHub Issues 报告具体关卡与触发时机。

### Q3: 声音大小或混响听起来不够平衡？
* 游戏内可以在“选项 - 声音”中适度调整“对话音量”与“主音量”比例；
* 由于 AI 合成时各关卡环境混响各异，后续版本将持续通过微调混音曲线改善。

---

## 📜 版权声明与致谢 (Credits & Attribution)

1. **游戏原作版权**：
   - 《使命召唤：现代战争2 战役重制版》（Call of Duty: Modern Warfare 2 Campaign Remastered）的一切音频、剧本、角色形象与游戏资源版权均归 **动视暴雪（Activision Blizzard）** 及原开发商 **Infinity Ward** 所有。
2. **VR Mod 版权与独立性声明**：
   - **Overlord (MW2CR VR Mod)** 的全部代码、二进制及项目所有权归原作者 **[Aeka0](https://github.com/Aeka0)** 所有，项目主页：[https://github.com/Aeka0/Overlord](https://github.com/Aeka0/Overlord)（Bilibili: @Aeka0 超铀）。
   - **独立性声明**：本配音 Mod 为完全独立的语言与音频外挂资源补丁，**本项目不包含、不修改、亦不二次分发 Overlord 的任何代码或可执行文件（如 `overlord.exe`、DLL 钩子等）**。如需使用 VR 模式游玩，请严格遵循其开源许可协议前往原作者仓库下载安装。
3. **技术与逆向社区致谢**：
   - 感谢 **H2-Mod** 开源社区提供底层文件重定向机制；
   - 感谢 **ZoneTool** 开发者（RektInator、Laupetin 等）开源的 Fastfile 资产打包工具链；
   - 感谢 **IndexTTS** 开源神经声学语音合成技术社区。
4. **非商业免责声明**：
   - 本 Mod 为个人业余制作的免费、非商业化技术探索与玩家交流作品；
   - **严禁任何个人或机构将本 Mod 用于任何形式的商业营利行为（包括但不限于付费下载、打包倒卖、赞助解锁等）**。

---

*项目维护：mccrena*  
*Mod 发布仓库：https://github.com/mccrena/cod6ChineseMod*

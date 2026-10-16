import os
import sys
import zipfile
import hashlib
from pathlib import Path

RELEASE_ROOT = Path(r"C:\mw2cr-chinese-audio-mod")
DEV_ROOT = Path(r"e:\game\Call Of Duty Modern Warfare 2 Campaign Remastered\Call Of Duty Modern Warfare 2 Campaign Remastered\v1.1\dist\h2-mod")

def calc_sha256(filepath):
    h = hashlib.sha256()
    with open(filepath, 'rb') as f:
        while chunk := f.read(1024 * 1024):
            h.update(chunk)
    return h.hexdigest()

def generate_checksums():
    print("正在生成 checksums.sha256 ...")
    h2_mod = RELEASE_ROOT / "h2-mod"
    lines = []
    for root, dirs, files in os.walk(h2_mod):
        for f in sorted(files):
            if f.endswith('.flac') or f.endswith('.ff'):
                fp = Path(root) / f
                rel = fp.relative_to(RELEASE_ROOT).as_posix()
                sha = calc_sha256(fp)
                lines.append(f"{sha}  {rel}\n")
    
    checksums_file = RELEASE_ROOT / "checksums.sha256"
    checksums_file.write_text("".join(lines), encoding='utf-8')
    print(f"已生成 {len(lines)} 条文件的校验码至 checksums.sha256")

def pack_core_zip():
    zip_name = "MW2CR_Chinese_Audio_Mod_v1.1.zip"
    zip_path = RELEASE_ROOT / zip_name
    print(f"\n正在打包核心 Mod 压缩包: {zip_name} ...")
    
    files_to_pack = []
    # 根目录脚本与文档
    for f in ["一键安装.bat", "一键卸载.bat", "校验工具.bat", "README.md", "INSTALL_GUIDE.md", "LICENSE"]:
        p = RELEASE_ROOT / f
        if p.exists():
            files_to_pack.append((p, f))
            
    # h2-mod/zone
    for fp in (RELEASE_ROOT / "h2-mod/zone").rglob("*.ff"):
        rel = fp.relative_to(RELEASE_ROOT).as_posix()
        files_to_pack.append((fp, rel))
        
    # h2-mod/simplified_chinese/sound/voiceovers
    for fp in (RELEASE_ROOT / "h2-mod/simplified_chinese/sound/voiceovers").rglob("*.flac"):
        rel = fp.relative_to(RELEASE_ROOT).as_posix()
        files_to_pack.append((fp, rel))
        
    print(f"待打包文件总数: {len(files_to_pack)} 个")
    with zipfile.ZipFile(zip_path, 'w', compression=zipfile.ZIP_DEFLATED, compresslevel=6) as z:
        for fp, arcname in files_to_pack:
            z.write(fp, arcname)
            
    size_mb = zip_path.stat().st_size / (1024 * 1024)
    sha = calc_sha256(zip_path)
    sha_file = RELEASE_ROOT / f"{zip_name}.sha256"
    sha_file.write_text(f"{sha}  {zip_name}\n", encoding='utf-8')
    print(f"核心包打包完成! 大小: {size_mb:.2f} MB, SHA256: {sha}")

def pack_cg_zips():
    cg_dir = DEV_ROOT / "video"
    if not cg_dir.exists():
        print(f"未找到 CG 视频目录: {cg_dir}")
        return
        
    biks = sorted(list(cg_dir.glob("*.bik")))
    print(f"\n找到 {len(biks)} 个中文 CG 视频")
    
    # 分组：Part 1 (前 9 个) 约 1.18 GB，Part 2 (后 8 个) 约 1.01 GB
    part1_names = {
        "intro_credits_load.bik",
        "trainer_load.bik",
        "roadkill_load.bik",
        "cliffhanger_load.bik",
        "airport_load.bik",
        "favela_load.bik",
        "favela_escape_load.bik",
        "invasion_load.bik",
        "arcadia_load.bik"
    }
    
    packs = {
        "MW2CR_Chinese_CG_Pack_v1.1_Part1.zip": [b for b in biks if b.name in part1_names],
        "MW2CR_Chinese_CG_Pack_v1.1_Part2.zip": [b for b in biks if b.name not in part1_names]
    }
    
    for zip_name, movies in packs.items():
        zip_path = RELEASE_ROOT / zip_name
        print(f"\n正在打包 CG 增强包: {zip_name} (包含 {len(movies)} 个视频) ...")
        
        setup_bat = (
            "@echo off\r\n"
            "chcp 65001 >nul\r\n"
            "echo 正在部署 CG 视频路径镜像...\r\n"
            "if not exist \"h2-mod\\video\" mkdir \"h2-mod\\video\" 2>nul\r\n"
            "for %%f in (\"h2-mod\\simplified_chinese\\*.bik\") do (\r\n"
            "    if not exist \"h2-mod\\video\\%%~nxf\" mklink /H \"h2-mod\\video\\%%~nxf\" \"%%f\" >nul 2>nul\r\n"
            "    if not exist \"h2-mod\\video\\%%~nxf\" copy /y \"%%f\" \"h2-mod\\video\\%%~nxf\" >nul 2>nul\r\n"
            ")\r\n"
            "echo [完成] CG 视频部署完毕！\r\n"
            "pause\r\n"
        )
        
        with zipfile.ZipFile(zip_path, 'w', compression=zipfile.ZIP_STORED) as z:
            readme_text = (
                "【MW2CR 中文配音 Mod v1.1 - 全流程 1080P/4K 中文 CG 视频增强包】\r\n\r\n"
                "【安装方法】\r\n"
                "1. 直接将本压缩包内的所有内容解压并覆盖到您的 MW2CR 游戏根目录（包含 overlord.exe 或 MW2CR.exe 的目录）。\r\n"
                "2. 运行游戏根目录下的【一键安装.bat】（或双击解压出的【一键部署CG.bat】）即可生效。\r\n"
            )
            z.writestr("CG增强包使用说明.txt", readme_text.encode('utf-8'))
            z.writestr("一键部署CG.bat", setup_bat.encode('utf-8'))
            
            for b in movies:
                z.write(b, f"h2-mod/simplified_chinese/{b.name}")
                
        size_mb = zip_path.stat().st_size / (1024 * 1024)
        sha = calc_sha256(zip_path)
        sha_file = RELEASE_ROOT / f"{zip_name}.sha256"
        sha_file.write_text(f"{sha}  {zip_name}\n", encoding='utf-8')
        print(f"CG包 {zip_name} 打包完成! 大小: {size_mb:.2f} MB, SHA256: {sha}")

if __name__ == "__main__":
    generate_checksums()
    pack_core_zip()
    pack_cg_zips()
    print("\n所有打包任务全部完成!")

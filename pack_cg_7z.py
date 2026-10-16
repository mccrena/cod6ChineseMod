import time
import hashlib
from pathlib import Path
import py7zr

RELEASE_ROOT = Path(r"C:\mw2cr-chinese-audio-mod")
DEV_ROOT = Path(r"e:\game\Call Of Duty Modern Warfare 2 Campaign Remastered\Call Of Duty Modern Warfare 2 Campaign Remastered\v1.1\dist\h2-mod")

def calc_sha256(filepath):
    h = hashlib.sha256()
    with open(filepath, 'rb') as f:
        while chunk := f.read(1024 * 1024):
            h.update(chunk)
    return h.hexdigest()

def main():
    cg_dir = DEV_ROOT / "video"
    out_7z = RELEASE_ROOT / "MW2CR_Chinese_CG_Pack_v1.1.7z"
    sha_file = RELEASE_ROOT / "MW2CR_Chinese_CG_Pack_v1.1.7z.sha256"
    
    biks = sorted(list(cg_dir.glob("*.bik")))
    print(f"找到 {len(biks)} 个中文 CG 视频，开始 7z 固实压缩打包...")
    t0 = time.time()
    
    readme_text = (
        "【MW2CR 中文配音 Mod v1.1 - 全流程 1080P/4K 中文 CG 视频增强包】\r\n\r\n"
        "【安装方法】\r\n"
        "1. 直接将本压缩包内的所有内容解压并覆盖到您的 MW2CR 游戏根目录（包含 overlord.exe 或 MW2CR.exe 的目录）。\r\n"
        "2. 运行游戏根目录下的【一键安装.bat】（或双击解压出的【一键部署CG.bat】）即可生效。\r\n"
    )
    
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
    
    # 采用 LZMA2 快速预设 (preset=1)，保证高压缩率的同时压制速度快
    filters = [{'id': py7zr.FILTER_LZMA2, 'preset': 1}]
    with py7zr.SevenZipFile(out_7z, 'w', filters=filters) as archive:
        archive.writestr(readme_text, "CG增强包使用说明.txt")
        archive.writestr(setup_bat, "一键部署CG.bat")
        for b in biks:
            print(f"  正在添加: {b.name} ({b.stat().st_size / (1024*1024):.1f} MB)...")
            archive.write(b, f"h2-mod/simplified_chinese/{b.name}")
            
    elapsed = time.time() - t0
    size_mb = out_7z.stat().st_size / (1024 * 1024)
    size_gb = size_mb / 1024
    print(f"\n7z 单文件压缩完成! 耗时: {elapsed:.1f} 秒")
    print(f"最终体积: {size_mb:.2f} MB ({size_gb:.2f} GB)")
    
    sha = calc_sha256(out_7z)
    sha_file.write_text(f"{sha}  MW2CR_Chinese_CG_Pack_v1.1.7z\n", encoding='utf-8')
    print(f"SHA256: {sha}")

if __name__ == "__main__":
    main()

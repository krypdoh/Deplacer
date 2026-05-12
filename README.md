# Deplacer

**Deplacer** is a Windows desktop application that organizes a messy folder by automatically sorting files into categorized subfolders — with a live preview before anything is moved.

---

## Features

- **One-click sorting** — select a folder and let Deplacer move files into tidy subfolders
- **Preview mode** — see exactly what will happen before committing any changes
- **Fully customizable categories** — add, edit, or disable categories and their file extensions
- **Configurable folder prefix** — output folders default to `Sifter-Documents`, `Sifter-Images`, etc. (prefix is editable or removable)
- **Conflict-safe** — if a file with the same name already exists in the destination, it is renamed automatically (`file_1.ext`, `file_2.ext`, …) rather than overwritten
- **Move Folders** option — optionally move subdirectories into a `[Folders]` subfolder
- **Recursive mode** *(advanced)* — process files in all nested subfolders
- **Persistent settings** — configuration is saved to `%APPDATA%\Deplacer\config.json` and restored on next launch

---

## Default Categories

| Category      | Extensions                                                                                        |
|---------------|---------------------------------------------------------------------------------------------------|
| Shortcuts     | `.lnk` `.url`                                                                                     |
| Documents     | `.txt` `.doc` `.docx` `.pdf` `.odt` `.rtf` `.md` `.pages`                                         |
| Images        | `.jpg` `.jpeg` `.png` `.gif` `.bmp` `.tiff` `.svg` `.ico` `.webp`                                 |
| Videos        | `.mp4` `.avi` `.mkv` `.mov` `.wmv` `.flv` `.m4v` `.webm`                                          |
| Audio         | `.mp3` `.wav` `.flac` `.aac` `.ogg` `.wma` `.m4a`                                                 |
| Archives      | `.zip` `.rar` `.7z` `.tar` `.gz` `.bz2` `.xz`                                                     |
| Spreadsheets  | `.xls` `.xlsx` `.csv` `.ods`                                                                      |
| Presentations | `.ppt` `.pptx` `.odp`                                                                             |
| EXE           | `.exe` `.msi`                                                                                     |
| Code          | `.py` `.js` `.ts` `.html` `.css` `.java` `.cpp` `.c` `.cs` `.php` `.rb` `.go` `.sh` `.bat` `.ps1` |
| Fonts         | `.ttf` `.otf` `.woff` `.woff2`                                                                    |
| E-books       | `.epub` `.mobi` `.azw` `.azw3` `.fb2` `.cbz` `.cbr`                                               |
| Disk Images   | `.iso` `.img` `.dmg` `.vhd` `.vhdx`                                                               |
| Torrents      | `.torrent`                                                                                        |
| Other         | *(everything else)*                                                                               |

---

## Requirements

- Windows 10/11
- Python 3.10+
- [customtkinter](https://github.com/TomSchimansky/CustomTkinter)

Install dependencies:

```
pip install -r requirements.txt
```

---

## Running from Source

```
python Deplacer.py
```

---

## Building a Standalone Executable

Requires [PyInstaller](https://pyinstaller.org):

```
pip install pyinstaller customtkinter
build_exe.bat
```

The finished executable will be at `dist\Deplacer.exe` — no Python installation required to run it.

---

## Usage

1. Launch **Deplacer**.
2. Click **Browse** and select the folder you want to organize.
3. *(Optional)* Enable **Move Folders** to also relocate subdirectories.
4. Click **▶ Preview** to review every planned move in the log without touching any files.
5. Click **⚡ Run** to execute the sort.

### Settings Tab

- **Folder Prefix** — text prepended to every destination folder name (default: `Sifter-`). Uncheck *No prefix* to remove it entirely.
- **Categories table** — toggle categories on/off, rename them, change their destination folder, or edit their extension list.
- **Add Category** — create a new category with a custom name and extensions.
- **Reset Defaults** — restore all categories and settings to factory defaults.
- **Advanced — Recursive Mode** — when enabled, Deplacer descends into all subfolders. Use with caution; this cannot be easily undone.

---

## Configuration File

Settings are stored at:

```
%APPDATA%\Deplacer\config.json
```

You can edit this file directly if needed; invalid or missing values fall back to defaults on next launch.

---

## Links

- [Download EXE](https://github.com/krypdoh/Deplacer/releases/)
- [View on GitHub](https://github.com/krypdoh/Deplacer)

---

## License

MIT

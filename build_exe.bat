@echo off
REM ─────────────────────────────────────────────────────────────────────────────
REM  Deplacer — Build standalone .exe
REM  Requires:  pip install pyinstaller customtkinter
REM  Output:    dist\Deplacer.exe
REM ─────────────────────────────────────────────────────────────────────────────

echo Building Deplacer.exe with PyInstaller...

pyinstaller ^
  --onefile ^
  --windowed ^
  --name Deplacer ^
  --collect-data customtkinter ^
  deplacer.py

echo.
if exist dist\Deplacer.exe (
    echo  Build complete:  dist\Deplacer.exe
) else (
    echo  Build FAILED — check output above for errors.
)
pause

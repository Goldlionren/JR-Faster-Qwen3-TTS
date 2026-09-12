@echo off
setlocal

REM Public example only. Replace placeholders locally; do not commit private values.
cd /d <FASTER_QWEN3_TTS_ROOT>
set "PATH=<FFMPEG_BIN>;%PATH%"
set PYTHONUTF8=1

.venv\Scripts\python.exe examples\openai_server.py ^
  --model Qwen/Qwen3-TTS-12Hz-0.6B-Base ^
  --voices <PRIVATE_VOICES_JSON> ^
  --host <TTS_HOST> ^
  --port 18000
# JR Faster-Qwen3-TTS: Hermes / OpenAI-compatible Opus compatibility

This derivative is based on `andimarafioti/faster-qwen3-tts` and retains the upstream MIT license and Git history.

Validated compatibility additions:

- explicit UTF-8 loading for named voice JSON on Windows;
- voice-profile `instruct` forwarding;
- OpenAI-compatible `response_format=opus`;
- real Ogg/Opus output through FFmpeg `libopus`;
- compatibility with Hermes v0.20.6 Telegram native voice delivery.

## Privacy boundary

Never commit production reference audio, private voices JSON, LAN addresses, local paths, generated audio, or backup directories.

Use `voices.example.json` and `start_tts_api.example.bat` as templates.

## Validated format matrix

| Format | Result |
|---|---|
| WAV | PCM S16LE / 24 kHz / mono |
| PCM | raw PCM S16LE / 24 kHz / mono |
| MP3 | MP3 / 24 kHz / mono |
| Opus | Ogg/Opus / mono / 48 kHz decoder clock |

The Qwen model itself remains a 24 kHz generation source.
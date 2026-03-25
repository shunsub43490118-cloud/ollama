#!/bin/bash

# Ollama Library をブラウザで開く

URL="https://ollama.ai/library"

# ブラウザで開く
if command -v xdg-open &> /dev/null; then
    # Linux
    xdg-open "$URL"
elif command -v open &> /dev/null; then
    # macOS
    open "$URL"
elif command -v start &> /dev/null; then
    # Windows
    start "$URL"
else
    echo "ブラウザを開くコマンドが見つかりません"
    echo "以下のURLを手動で開いてください: $URL"
    exit 1
fi

echo "Ollama Library を開きました: $URL"

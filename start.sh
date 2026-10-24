#!/bin/bash
# arm Browser 起動スクリプト

cd "$(dirname "$0")"

if [ ! -d "node_modules" ] || [ ! -f "node_modules/.bin/electron" ]; then
  echo "依存関係をインストールしています..."
  npm install --no-audit --no-fund
fi

echo "arm Browser を起動します..."
npx electron .

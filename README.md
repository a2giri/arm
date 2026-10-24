# arm Browser for Linux

**プロキシなし・本物の Chromium エンジン**で動作するデスクトップブラウザです。

Electron の `<webview>` を使い、Chrome と同等のレンダリング・JavaScript・Cookie・動画再生などを実現しています。

## 特徴

- **プロキシ不要** — 直接サイトにアクセス（Google / YouTube / 銀行サイトなども基本的に動作）
- タブ機能・履歴・ブックマーク
- 画面分割（Split View）
- ダーク / ライトテーマ切替
- ズーム・全画面
- Yahoo! 検索エンジン連携
- 休止タブ（メモリ節約）

## 必要環境

- Node.js 18 以上
- Linux (Ubuntu / Debian / Fedora / Arch など)

## インストール & 起動

```bash
cd arm-browser-linux
npm install
npm start
# または
./start.sh
```

## 配布用パッケージのビルド

```bash
npm run build          # AppImage + deb
npm run build:appimage # AppImage のみ
npm run build:deb      # deb のみ
```

成果物は `dist/` に出力されます。

## 技術的な変更点（v1.1）

- 外部プロキシ（Cloudflare Worker）を完全削除
- `iframe` + `srcdoc` → Electron の本物の `<webview>` に変更
- 戻る / 進む / リロードは webview のネイティブ履歴を使用
- Cookie・LocalStorage・IndexedDB がサイトごとに正常に保持される
- User-Agent を Chrome 風に調整

## 注意

- 一部のサイトで「Electron」検知される場合は User-Agent をさらに調整可能です
- 開発者ツールはメニュー「表示 → 開発者ツール」から開けます
- webview 内の開発者ツールを開くには、該当ページで右クリック → 「検証」が使えます（環境による）

## ライセンス

MIT

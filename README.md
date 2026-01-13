# LuaLaTeX + Dev Container テンプレート (日本語対応)
VS Code と Docker を利用して、ローカル環境を汚さずに日本語 LaTeX (LuaLaTeX) 環境を構築するためのテンプレートです。Windows (Docker Desktop) および Mac (Intel/Apple Silicon + OrbStack) の両方で動作確認済みです。

## ✨ 特徴
- 環境のポータビリティ: Docker を使用するため、PCを買い替えても、共同編集者と作業しても全く同じ PDF が出力されます。
- モダンな日本語環境: bxjsarticle クラスと LuaLaTeX エンジンを採用し、高品質な日本語組版が可能です 。
- 自動ビルド: VS Code で保存 (Ctrl+S / Cmd+S) するだけで、PDF が自動更新されます。
- 軽量・クリーン: ビルド用の中間ファイルがメインフォルダに散らからないよう設定済みです。

## 🚀 準備するもの
- Docker: Docker Desktop または OrbStack
- VS Code
- VS Code 拡張機能: Dev Containers

## 🛠️ 使い方
### 1. クローン
ターミナルで以下のコマンドを実行してリポジトリを手元にコピーします。
```bash
git clone https://github.com/washi-9/portable-tex-environment.git
cd portable-tex-environment
```
### 2. VS Code で開く
```bash
code .
```
### 3. コンテナの起動
1. 右下に「Reopen in Container（コンテナで再度開く）」という通知が出たらクリックします。
2. 通知が出ない場合は、左下の青いアイコン >< をクリックし、「Dev Containers: Reopen in Container」 を選択します。
3. 初回起動時は Docker イメージのダウンロードが行われます（数分かかります）。

### 4. PDFの作成
1. `main.tex` を開きます。
2. Ctrl+S (Windows) または Cmd+S (Mac) を押して保存します。
3. 数秒後に `main.pdf` が自動生成されます。

## 📝 基本的な操作
- 中間ファイルの削除: エラーでビルドが止まった際は、VS Code のターミナルで latexmk -C を実行してください。
- パッケージの追加: 特殊なパッケージが必要な場合は、Dockerfile に tlmgr install <パッケージ名> を追記してコンテナを Rebuild してください。
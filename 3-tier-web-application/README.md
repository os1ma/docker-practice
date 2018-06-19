# Docker Composeを用いた3層構成のWebアプリケーションのサンプル

## Dependencies
- Docker Engine
- Docker Compose

## アプリケーションの概要

## ディレクトリ構成
docker-study/
├─ my-app/ # サーバサイドのプロジェクトです。SpringBootによるAPIです。
├─ my-db/ # ローカルでの開発用のデータベースです。
└─ my-web/ # フロントエンドのプロジェクトです。Nuxt.jsによるSPAです。

## Usage

以下のいずれかのコマンドでコンテナを起動後、ブラウザからhttp://<Docker用仮想マシンのIP>にアクセスしてください。

### 開発用のコンテナを起動する場合

```
docker-compose up # Ctrl + Cで終了
```

my-app、my-webのソースコードを編集するとホットデプロイされます。

### 本番用にコンテナをビルド

```
docker-compose build
```

### 本番用のコンテナを起動する場合

```
docker-compose -f docker-compose-prod.yml up # Ctrl + Cで終了
```

### コンテナのクリーンアップ

```
docker-compose down
```

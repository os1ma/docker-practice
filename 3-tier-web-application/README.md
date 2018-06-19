# Docker Composeを用いた3層構成のWebアプリケーションのサンプル

## Dependencies
- Docker Engine
- Docker Compose

## アプリケーションの概要

## ディレクトリ構成
- my-app
    - SpringBootによるAPI
- my-db
    - ローカルでの開発用のデータベース
- my-web
    - Vue.jsによるSPA

## Usage

### 開発用のホットデプロイモードでのコンテナを起動

```
docker-compose up
```

### 本番用にコンテナをビルド

```
build.sh
```

### 本番用構成でコンテナを起動

```
docker-compose -f docker-compose-prod.yml up
```

### コンテナのクリーンアップ

```
docker-compose down
```

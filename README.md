# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# rails install

### 参考

https://mseeeen.msen.jp/rails-docker/

### インストール

```shell
docker-compose build
docker-compose run web rails new . --force --no-deps --database=postgresql
docker-compose run web rails db:create
docker-compose up -d
```

### 動作確認
  
`http://localhost:3000/`




# regex

## 構成の検討

- 前提
    - ruby, rails, react を学習の為にも使用したい
        - Next.js は便利だが学習にはプレーンな react を使った方がいいかも
    - コストはなるべく抑えたい
    - 認証周りの実装が面倒なので firebase auth を使いたい
        - 上記も含めてサーバー環境は cloud run が無料枠もあって良さそう
            - 1カ月あたり200万回のリクエスト処理、36万GB秒のメモリ、18万vCPU秒のコンピューティング時間が利用可能

### データの管理

- Free Tier の主要サービス
    - https://www.publickey1.jp/blog/21/free_tier2021.html
- Amazon DynamoDB
    - 25GBストレージのストレージ容量など使用可能

Amazon DynamoDB は rails でもマイグレーションをから使用可能

- https://qiita.com/takuya0301/items/1bda712480b3b86bb93f

### 開発の進め方

1. まず開発 docker 環境を作る
    - rbenv
        - https://qiita.com/ma2shita/items/5c41aa8a4908c919ba78
    - rails + docker
        - https://mseeeen.msen.jp/rails-docker/
    - firebase auth + docker
        - https://qiita.com/ppco/items/87682b3a14ceb3702dbb
        - https://zenn.dev/yutasb/articles/2407c5f097b848
    - Amazon DynamoDB + rails
        - https://qiita.com/takuya0301/items/1bda712480b3b86bb93f
        - https://docs.aws.amazon.com/ja_jp/amazondynamodb/latest/developerguide/GettingStarted.html
    - react + docker
2. DB設計、画面設計などを検討
    - 画面設計は figma を使ってみる
3. CI、E2Eなど検討
    - Cloud Run
        - https://qiita.com/fuku_tech/items/774c2c2f941bdfd2c5fd
    - CI  



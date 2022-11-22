# README

## 環境構築
```
1. リポジトリをクローン
git clone git@github.com:mzw86020424/rails-graphql.git

2. 移動
cd rails-graphql

3. コンテナをビルド・起動
docker-compose up

4. コンテナに入る
docker exec -ti rails-graphql_app_1 bash

5. データベースを作る
rails db:create

# graphiqlへのアクセス
http://localhost:3000/graphiql

```
## graphQLについて
### graphQLとは

> GraphQL は、API のためのクエリ言語であり、既存のデータを使ってクエリを実行するためのランタイムです。GraphQL は、API 内のデータについて完全で理解しやすい記述を提供し、クライアントが必要なものだけを求める力を与え、時間の経過とともに API を進化させることを容易にし、強力な開発者ツールを可能にします。 [graphql.org](https://graphql.org/)

### graphQLの特徴
- RESTの代替として生まれたもの
- クエリ的な言語でリクエストを書く
- リクエストはRESTでいうPOSTのみ
- レスポンスはRESTでいう200OKのみ
- RESTと同じようなキャッシュができない（方法はあるよう）
[Apollo Clientのキャッシュの仕組みとローカルの状態管理について](https://zenn.dev/kazu777/articles/b64935ea7d6fee)

### RESTとの比較
![REST](https://graphql-engine-cdn.hasura.io/learn-hasura/assets/graphql-react/rest-api.png)
![graphQL](https://graphql-engine-cdn.hasura.io/learn-hasura/assets/graphql-react/graphql-api.gif)

### うれしいこと
- クライアント側が欲しい値だけを都度指定して受け取れる
- 無駄な値のやり取りが減る
- 一つのエンドポイントにリクエストするだけで済む
- 型定義だけ全てしてしまえば、サーバ側の追加・変更などいらなさそう

### 実装の流れ（ざっくり）
```
0. graphql, graphql-railsを導入
rails g graphql:install

1. いつも通りrailsのモデルを作成する
rails g model User

2. railsのモデルを参照してgraphqlのモデル（タイプ。型）を作成
rails g graphql:object User

3. 読み込み系リクエストの実行はquery、書き込み系リクエストの実行はmutationを作成する

4. 上記それぞれquery_type.rb、mutation_type.rbに追記していく

5. 使える
```

## 今回やらなかったこと
### フロント側の実装
- [こういうもの](https://apollo.vuejs.org/)の実装が必要そう。詳しくみれていない・・・次回フロントも実装してみたい
### N+1問題
- graphqlでは以下の時にusers全件取得し、その後各usersでtweets全件取得するためN＋1問題が発生する
```
query ExampleQuery {
  users {
    id
    name
    tweets {
       id
       title
    }
  }
}
```
 N+1回避する方法はいくつかあるようで、railsの場合は[graphQL-rubyのDataloader](https://graphql-ruby.org/dataloader/dataloader.html)というライブラリで回避できるらしい。次回実装したい


## 参考文献
### rails
[M1macbookpro+dockerでRails開発環境構築](https://norix.tokyo/environment/443/) (環境構築用)
### graphQL
[Ruby on Rails & GraphQLの環境構築と実装](https://rightcode.co.jp/blog/information-technology/ruby-on-rails-graphql-environment-implementation-syain) (環境構築用)

[GraphQLとは？メリットや概要を入門ガイドで学ぶ](https://circleci.com/ja/blog/introduction-to-graphql/)


[GraphQLを導入する時に考えておいたほうが良いこと](https://engineering.mercari.com/blog/entry/20220303-concerns-with-using-graphql/)

[GraphQLとRESTの比較](https://hasura.io/learn/ja/graphql/intro-graphql/graphql-vs-rest/)

[GraphQLの便利なツール](https://qiita.com/NagaokaKenichi/items/f83148f4903b17d1d2f0)
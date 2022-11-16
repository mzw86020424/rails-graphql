# README

## 環境構築
1. リポジトリをクローン

```git clone git@github.com:mzw86020424/rails-graphql.git```

2. 移動

```cd rails-graphql```

3. コンテナをビルド・起動

```docker-compose up```

4. コンテナに入る

```docker exec -ti rails-graphql_app_1 bash```

5. データベースを作る

```rails db:create```

- graphiqlへのアクセス

http://localhost:3000/graphiql

## 参考文献
### rails
[M1macbookpro+dockerでRails開発環境構築](https://norix.tokyo/environment/443/) (環境構築用)
### graphQL
[Ruby on Rails & GraphQLの環境構築と実装](https://rightcode.co.jp/blog/information-technology/ruby-on-rails-graphql-environment-implementation-syain) (環境構築用)

[GraphQLとは？メリットや概要を入門ガイドで学ぶ](https://circleci.com/ja/blog/introduction-to-graphql/)


[GraphQLを導入する時に考えておいたほうが良いこと](https://engineering.mercari.com/blog/entry/20220303-concerns-with-using-graphql/)

[GraphQLとRESTの比較](https://hasura.io/learn/ja/graphql/intro-graphql/graphql-vs-rest/)

[GraphQLの便利なツール](https://qiita.com/NagaokaKenichi/items/f83148f4903b17d1d2f0)
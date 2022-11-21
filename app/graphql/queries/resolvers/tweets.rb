module Queries
  module Resolvers
    class Tweets < GraphQL::Schema::Resolver
      type [Types::TweetType], null: false
      description "Tweetの一覧取得"

      def resolve
        ::Tweet.all
      end
    end
  end
end
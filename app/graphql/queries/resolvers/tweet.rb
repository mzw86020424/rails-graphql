module Queries
  module Resolvers
    class Tweet < GraphQL::Schema::Resolver
      type Types::TweetType, null: false
      description "特定Tweetの取得"

      argument :id, String, required: true, description: "Tweetのid"

      def resolve(params)
        ::Tweet.find(params[:id])
      end
    end
  end
end
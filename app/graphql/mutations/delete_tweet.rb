module Mutations
  class DeleteTweet < BaseMutation
    field :tweet, Types::TweetType, null: false

    argument :id, Integer, required: true

    description "Tweetの削除"

    def resolve(params)
      tweet = Tweet.destroy(params[:id])
      {
        "tweet": tweet
      }
    end
  end
end

module Mutations
  class UpdateTweet < BaseMutation
    field :tweet, Types::TweetType, null: false

    argument :content, String, required: true
    argument :id, Integer, required: true

    description "Tweetの更新"

    def resolve(params)
      tweet = Tweet.find(params[:id])
      tweet.update!(content: params[:content])
      {
        "tweet": tweet
      }
    end
  end
end

module Mutations
  class AddTweet < BaseMutation
    field :tweet, Types::TweetType, null: false

    argument :content, String, required: true
    argument :user_id, Integer, required: true

    description "Userの新規作成"

    def resolve(params)
      tweet = Tweet.create!(content: params[:content], user_id: params[:user_id])
      {
        "tweet": tweet
      }
    end
  end
end

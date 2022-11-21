module Types
  class MutationType < Types::BaseObject
    field :delete_tweet, mutation: Mutations::DeleteTweet
    field :update_tweet, mutation: Mutations::UpdateTweet
    field :add_tweet, mutation: Mutations::AddTweet
    field :add_user, mutation: Mutations::AddUser
  end
end

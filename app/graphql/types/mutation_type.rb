module Types
  class MutationType < Types::BaseObject
    field :update_tweet, mutation: Mutations::UpdateTweet
    field :add_tweet, mutation: Mutations::AddTweet
    field :add_user, mutation: Mutations::AddUser
  end
end

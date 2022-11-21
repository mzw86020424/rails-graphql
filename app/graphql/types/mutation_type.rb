module Types
  class MutationType < Types::BaseObject
    field :add_tweet, mutation: Mutations::AddTweet
    field :add_user, mutation: Mutations::AddUser
  end
end

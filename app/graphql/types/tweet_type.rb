# frozen_string_literal: true

module Types
  class TweetType < Types::BaseObject
    field :id, ID, null: false
    field :content, String, null: false
    field :user_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :user, Types::UserType

    def user
      dataloader.with(::Sources::UserById).load(object.user_id)
    end
  end
end

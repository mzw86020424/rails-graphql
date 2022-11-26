module Sources
  class TweetsById < GraphQL::Dataloader::Source
    def initialize
      @model_class = ::Tweet
    end

    def fetch(keys)
      records = @model_class.where(user_id: keys)
                            .group_by { |record| record.user_id }
      keys.map { |key| records[key] || [] }
    end
  end
end

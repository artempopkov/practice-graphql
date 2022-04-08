module Types
  class SubscriptionType < BaseObject
    field :game_added_to_base, Types::GameType

    def game_added_to_base
      object
    end
  end
end

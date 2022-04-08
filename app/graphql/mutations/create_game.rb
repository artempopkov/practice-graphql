module Mutations
  class CreateGame < BaseMutation
    argument :title, String, required: true
    argument :mark, Integer, required: true

    type Types::GameType

    def resolve(title: nil, mark: nil)
      Game.create!(title: title, mark: mark).tap do |created_game|
        PracticeGraphqlSchema.subscriptions.trigger(:game_added_to_base, {}, created_game)
      end 
    end
  end
end

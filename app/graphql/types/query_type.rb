module Types
  class QueryType < Types::BaseObject
    field :games, [Types::GameType], 'Find all games', null: true
    field :game, Types::GameType, 'Find a game by ID', null: true do
      argument :id, ID, required: true
    end
    
    def games
      Game.all
    end

    def game(id:)
      Game.find(id)
    end
  end
end

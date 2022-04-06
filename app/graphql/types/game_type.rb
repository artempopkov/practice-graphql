module Types
  class GameType < Types::BaseObject
    description "A game"
    field :id, ID, null: false
    field :title, String, null: false
    field :mark, Integer, null: false
  end
end

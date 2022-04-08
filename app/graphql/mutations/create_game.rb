module Mutations
  class CreateGame < BaseMutation
    argument :title, String, required: true
    argument :mark, Integer, required: true

    field :success, Boolean, null: false
    field :errors, [String], null: false
    field :game, Types::GameType, null: true

    def resolve(title: nil, mark: nil)
      record = Game.create(title: title, mark: mark)
      if record
        { success: true, game: record, errors: [] }
      else
        { success: false, game: nil, errors: record.errors.full_messages }
      end
    end
  end
end

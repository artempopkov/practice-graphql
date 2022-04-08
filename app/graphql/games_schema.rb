class GamesSchema < GraphQL::Schema
  use GraphQL::Subscriptions::ActionCableSubscriptions

  mutation Types::MutationType
  query(Types::QueryType)
  subscriptions(Types::SubscriptionType)
end

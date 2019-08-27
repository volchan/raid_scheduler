class RaidSchedulerSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)
end

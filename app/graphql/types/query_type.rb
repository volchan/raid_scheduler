module Types
  class QueryType < Types::BaseObject
    field :me, resolver: Queries::Me
  end
end

module Queries
  class Me < BaseQuery
    description 'Returns the current user'

    type Types::UserType, null: true

    def resolve
      context[:current_user]
    end
  end
end

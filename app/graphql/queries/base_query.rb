module Queries
  class BaseQuery < GraphQL::Schema::Resolver
    private

    def check_current_user
      return if context[:current_user]

      raise GraphQL::ExecutionError, 'Authentication required'
    end
  end
end

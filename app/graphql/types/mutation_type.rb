module Types
  class MutationType < Types::BaseObject
    field :login_user, mutation: Mutations::LoginUser
  end
end

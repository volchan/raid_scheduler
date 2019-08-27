module Types
  class UserType < BaseObject
    field :id, ID, null: false
    field :username, String, null: false
    field :email, String, null: false
    field :token, String, null: false
  end
end

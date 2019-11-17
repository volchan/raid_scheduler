module Mutations
  class LoginUser < BaseMutation
    description 'Login for users'

    null true

    argument :login, String, required: true
    argument :password, String, required: true

    field :user, Types::UserType, null: true

    def resolve(login: nil, password: nil)
      user = User.find_for_authentication(email: login)
      user ||= User.find_for_authentication(username: login)

      return nil unless user

      is_valid_for_auth = user.valid_for_authentication? do
        user.valid_password?(password)
      end
      is_valid_for_auth ? { user: user } : nil
    end
  end
end

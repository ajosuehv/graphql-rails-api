require 'grape-swagger'

class GraphqlAPI::V1::Base < Grape::API
  include GraphqlAPI::V1::Defaults
  version 'v1'
  format :json
  helpers do
    def authenticated
      auth_token = headers['Auth-Token']
      @user = User.find_by(auth_token: auth_token)
      @user  ? true : false
    end
  end
  mount GraphqlAPI::V1::UsersController
end
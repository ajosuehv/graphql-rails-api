class GraphqlAPI::V1::UsersController < GraphqlAPI::V1::Base
  before do
    error!('401 Unauthorized', 401) unless authenticated
  end

  resource :users do
    desc 'GET users' do
      headers 'Auth-Token': {
          description: 'Validates your identity',
          required: true
      }
    end
    params do
      requires :query, type: String
    end
    get do
      variables = params[:variables]
      UsersSchema.execute(params[:query], variables: variables)
    end
  end

end
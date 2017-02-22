class GraphqlAPI::Base < Grape::API
  mount GraphqlAPI::V1::Base
end

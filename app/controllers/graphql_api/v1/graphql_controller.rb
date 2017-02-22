class  GraphqlAPI::V1::GraphqlController < GraphqlAPI::V1::Base
  before do
    error!('401 Unauthorized', 401) unless authenticated
  end
end
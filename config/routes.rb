Rails.application.routes.draw do
  mount GraphqlAPI::Base, at: '/'
end

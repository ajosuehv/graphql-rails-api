module GraphqlAPI::V1::Defaults
  extend ActiveSupport::Concern

  included do
    prefix "graphql_api"
    version "v1", using: :path
    default_format :json
    format :json

    helpers do

      def error_not_found
        error! "Not found.", 404
      end
    end
  end
end

UserType = GraphQL::ObjectType.define do
  name 'User'
  description 'Desc'

  field :id, !types.String
  field :email, !types.String
  field :name, !types.String

end

QueryRoot = GraphQL::ObjectType.define do
  name 'Query'
  description '...'

  field :user do
    type UserType
    argument :id, !types.String
    resolve -> (root, args, ctx) {
      User.find(args[:id])
    }
  end
end

UsersSchema = GraphQL::Schema.new(
    query: QueryRoot
)
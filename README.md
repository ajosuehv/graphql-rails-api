# graphql-rails-api
Simple Graphql using Rails and Auth-Token

# Install and run application

Download or clone this repo.
In the terminal go to the repo folder and run

```
$ bundle install
```

Ensure that postgres database is running and run migrations and populate the database with:

```
$ rake db:setup
```

after this, you can run the application.

```
$ rails s
```

# Accessing to data using the API and Token Authentication.

Having finished this steps in your terminal you can retrieve data using curl

```
$ curl -X GET -i -H "auth-token: a1b2c3d4e5f6g7" -d"query={user(id:\"1\"){email,name}}" localhost:3000/graphql_api/v1/users
```

# README

# Stack
* Ruby version :  2.7.0p0
* Rails version : 6.1.4.1
* [simplecov](https://github.com/simplecov-ruby/simplecov) as test coverage
* [dotenv](https://github.com/bkeepers/dotenv) as environment variable loader

# Configuration
In local, the following environment variables are required in the .env file:

| name              | value                        |
|-------------------|------------------------------|
| POSTGRES_USER     | database user with ownership |
| POSTGRES_PASSWORD | database user password       |
| POSTGRES_DB       | development database name    |
| POSTGRES_HOST     | database host                |
| POSTGRES_TEST_DB  | test database name           |

# Deployment
Run development server :
```
rails s
```

# Testing
Simplecov is enabled and outputs coverage in `./coverage` at every Minitest run.
Run tests :
```
rails t
```

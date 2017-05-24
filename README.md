# Akka-Slick-MySQL-RestApi

## Requirements

- SBT
- Scala
- MySQL
- Database manager
- Git
- Text editor or IDE

## API REST Interface

**USERS**
- `GET /v1/users`
- `GET /v1/users/user_id`
- `POST /v1/users`
- `PUT /v1/users/user_id`
- `DELETE /v1/users/user_id`


**POSTS**
- `GET /v1/users/user_id/posts`
- `GET /v1/users/user_id/posts/post_id`
- `POST /v1/users/user_id/posts`
- `PUT /v1/users/user_id/posts/post_id`
- `DELETE /v1/users/user_id/posts/post_id`

**COMMENTS**
- `GET /v1/users/user_id/posts/post_id/comments`
- `GET /v1/users/user_id/posts/post_id/comments/comment_id`
- `POST /v1/comments`
- `PUT /v1/users/user_id/posts/post_id/comments/comment_id`
- `PUT /v1/comments/comment_id`

## How to set up the database

Execute the `init.sql` script to populate the DB with some test data after deployment.

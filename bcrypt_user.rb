require_relative 'Auth'

# dummy data
users = [
    {username: "user1", password: "user1"},
    {username: "user2", password: "user2"},
    {username: "user3", password: "user3"}
]

hashed_users = create_secure_users(users)
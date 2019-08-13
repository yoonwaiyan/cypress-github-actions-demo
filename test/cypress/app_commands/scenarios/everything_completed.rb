# frozen_string_literal: true

user1 = User.create!(
  email: 'user1@test.com',
  password: 'user1_password'
)

user2 = User.create!(
  email: 'user2@test.com',
  password: 'user2_password'
)

Todo.create!(
  title: '1 hour walk',
  completed: true,
  user: user1
)

Todo.create!(
  title: 'Go shopping',
  completed: true,
  user: user1
)

Todo.create!(
  title: 'Buy some food',
  completed: true,
  user: user1
)

Todo.create!(
  title: 'Wash my car',
  completed: true,
  user: user2
)

Todo.create!(
  title: 'Go to gym',
  completed: true,
  user: user2
)

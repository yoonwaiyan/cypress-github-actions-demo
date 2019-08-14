# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { 'test_password' }

    factory :user_with_todos do
      transient do
        todos_count { Faker::Number.between(from: 1, to: 5) }
      end

      after(:create) do |user, evaluator|
        create_list(:todo, evaluator.todos_count, user: user)
      end
    end
  end
end

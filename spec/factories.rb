FactoryBot.define do
  factory :exercise do
    id "MyString"
    name "MyString"
    duration 1.5
    calories 1.5
    date "2018-03-26"
    state "MyString"
  end
  factory :user do
    email "MyString"
    password_digest "MyString"
  end
  factory :todo do
    title "MyString"
    created_by "MyString"
  end
    # Factories will go here
end

FactoryBot.define do
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

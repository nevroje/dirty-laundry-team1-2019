FactoryBot.define do
  factory :user do
    password { "Password" }
    email { "email@email.com" }
    role { "visitor" }
  end
end
FactoryBot.define do
  factory :user do
    sequence(:login) { |n| "WSmith#{n}" }
    name { "Will Smith" }
    url { "http://example.com" }
    avatar_url { "http://example.com" }
    provider { "github" }
  end
end

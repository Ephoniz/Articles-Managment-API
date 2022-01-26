FactoryBot.define do
  factory :access_token do
    #Token is automatically generated after intialiation
    association :user
  end
end

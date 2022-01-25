FactoryBot.define do
  factory :comment do
    content { "My comment content" }
    association :article
    association :user
  end
end

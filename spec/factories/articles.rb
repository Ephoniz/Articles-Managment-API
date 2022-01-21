FactoryBot.define do
  factory :article do
    sequence(:title) { |n| "My new article #{n}"}
    sequence(:content) { |n| "The best content in #{n}"}
    sequence(:slug) { |n| "my-new-article-#{n}"}
  end
end

FactoryBot.define do
  factory :article do
    sequence(:title) { |n| "My awesome article - #{n}" }
    sequence(:content) { |n| "This content is for the article - #{n}" }
    sequence(:slug) {|n| "my-awesome-article-#{n}" }
  end
end

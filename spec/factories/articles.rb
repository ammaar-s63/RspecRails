FactoryBot.define do
  factory :article do
    title { 'first article' }
    description { 'description for first article' }

    association :user, factory: :user
  end
end

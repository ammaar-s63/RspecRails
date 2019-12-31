# frozen_string_literal: true

FactoryBot.define do
  factory :article do
    title { Faker::Name.name }
    description { Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false) }
    association :user, factory: :user
  end
end

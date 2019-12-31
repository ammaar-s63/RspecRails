FactoryBot.define do
  factory :user do
    username { 'Ammaar' }
    email { 'ali.ammaar@square63.org' }
    password_digest { 'Square63'}
  end
end

FactoryBot.define do
  factory :product do
    title { 'MyString' }
    description { 'MyString' }
    image { 'MyString' }
    price { 1.5 }
    status { 'MyString' }
    developer { nil }
  end
end

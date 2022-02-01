# frozen_string_literal: true

FactoryBot.define do
  factory :product do
    title { 'MyString' }
    bytitle { 'MyString' }
    content { 'MyText' }
    price { 1.5 }
    old_price { 1 }
    status { 1 }
    keywords { 'MyString' }
    description { 'MyString' }
    img { 'MyString' }
    hit { 1 }
  end
end

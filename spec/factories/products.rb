FactoryGirl.define do
  factory :product do
    sequence(:name) { |n| "Product #{n}"}
    description 'Descrição do produto 1 (um)'
  end
end

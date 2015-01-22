FactoryGirl.define do
  factory :lesson do
    sequence(:name) { |n| "WDI#{n}" }
    description "Amet sit dolar ipsum lorem"
    content "Lorem ipsum dolar sit amet"
    link "https://motioninmotion.tv/"
  end

  factory :school do
    sequence(:name) { |n| "GA#{n}" }
    sequence(:description) { |n| "The best place to learn #{n} lorem" }
  end
end

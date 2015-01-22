FactoryGirl.define do
  factory :school do
    sequence(:name) { |n| "GA#{n}" }
    sequence(:description) { |n| "The best place to learn #{n} lorem" }
  end

  factory :lesson do
    school
    sequence(:name) { |n| "WDI#{n}" }
    description "Amet sit dolar ipsum lorem"
    content "Lorem ipsum dolar sit amet"
    link "https://motioninmotion.tv/"
  end
end

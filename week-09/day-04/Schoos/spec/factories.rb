FactoryGirl.define do
  factory :school do
    sequence(:name) { |n| "GA#{n}" }
    sequence(:description) { |n| "The best place to learn #{n} lorem" }
  end
end

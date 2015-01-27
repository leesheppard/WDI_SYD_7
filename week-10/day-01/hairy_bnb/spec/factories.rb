FactoryGirl.define do
  factory :apartment do
    sequence(:title) { |n| "Spacious #{n} Bed Apartment with Grand View" }
    sequence(:bedrooms) { |n| n }
    price_in_cents 1_500_000
    location "Bondi, NSW"
    description "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illum corporis recusandae natus, accusamus inventore aspernatur, minus, id dolor repellat expedita delectus incidunt veniam quos dignissimos voluptas omnis iusto. A, autem!"
    available true
  end
end
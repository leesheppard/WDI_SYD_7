require "pry"

people_csv = [
  "Jack,Watson-Hamblin,info@fluffyjack.com,123 Fake Street,Fake Town",
  "Jack,Watson-Hamblin,info@fluffyjack.com,123 Fake Street,Fake Town",
  "Jack,Watson-Hamblin,info@fluffyjack.com,123 Fake Street,Fake Town",
  "Jack,Watson-Hamblin,info@fluffyjack.com,123 Fake Street,Fake Town",
  "Jack,Watson-Hamblin,info@fluffyjack.com,123 Fake Street,Fake Town",
  "Jack,Watson-Hamblin,info@fluffyjack.com,123 Fake Street,Fake Town",
  "Jack,Watson-Hamblin,info@fluffyjack.com,123 Fake Street,Fake Town",
  "Jack,Watson-Hamblin,info@fluffyjack.com,123 Fake Street,Fake Town",
  "Jack,Watson-Hamblin,info@fluffyjack.com,123 Fake Street,Fake Town",
  "Jack,Watson-Hamblin,info@fluffyjack.com,123 Fake Street,Fake Town",
  "Jack,Watson-Hamblin,info@fluffyjack.com,123 Fake Street,Fake Town"
]

result = people_csv.map do |csv_string| 
  string_parts = csv_string.split(",")

  binding.pry

  {
    first_name: string_parts[0],
    last_name: string_parts[1],
    email: string_parts[2],
    street_address: string_parts[3],
    suburb: string_parts[4]
  }
end

puts result



















FactoryBot.define do
  factory :volunteer do
  first_name { "John" }
  last_name { "Smith" }
  email { "John@email.com" }
  hours { "8"}
  days {"Sat June 6th"}
  professional { "false" }
  end
end

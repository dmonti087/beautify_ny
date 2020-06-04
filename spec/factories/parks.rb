FactoryBot.define do
  factory :park do
    name { "Montauk State Park" }
    location { "Montauk, NY" }
    #volunteers {volunteers {  FactoryBot.create(:volunteer)}}
  end
end

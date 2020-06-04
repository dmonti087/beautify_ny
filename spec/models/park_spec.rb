require 'rails_helper'

RSpec.describe Park, type: :model do
  subject { Park.new(name: "Montauk State Park", location: "Montauk,NY")}
it "is valid with valid attributes" do
  expect(subject).to be_valid
end


end

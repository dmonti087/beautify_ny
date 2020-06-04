require 'rails_helper'

RSpec.describe Volunteer, type: :model do
park =  FactoryBot.create(:park)
subject { Volunteer.new( first_name: "John", last_name: "Smith", email: "John@email.com", hours: "8", days: "Sat June 6th", park_id: park.id)}
   it "is valid with valid attributes" do
     expect(subject).to be_valid
   end

   it "is not valid without a first_name" do
      subject.first_name=nil
      expect(subject).to_not be_valid
    end

   it "is not valid without a last_name" do
   subject.last_name=nil
   expect(subject).to_not be_valid
   end

   it "returns the correct full_name" do
     expect(subject.full_name).to eq("John Smith")
   end


   it "is not valid without an email" do
       subject.email=nil
       expect(subject).to_not be_valid
   end

   it "is not valid if the email address doesn't have a @" do
       subject.email="namegoogle.com"
       expect(subject).to_not be_valid
   end


   it "is not valid without a park location" do
      subject.park=nil
      expect(subject).to_not be_valid
   end

   it "is not valid without a valid park id" do
      subject.park_id = 9999
      expect(subject).to_not be_valid
   end

   it "is not valid without days entered" do
     subject.days=nil
     expect(subject).to_not be_valid
   end

   it "is not valid without hours entered" do
     subject.hours=nil
     expect(subject).to_not be_valid
   end

   it "is not valid without hours entered" do
     subject.hours=nil
     expect(subject).to_not be_valid
   end



end

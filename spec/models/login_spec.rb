require 'rails_helper'



RSpec.describe Login, type: :model do

  subject {described_class.new(username: "honest", email: "Lorem@gmail.com",password:"jhkjjjh",conformpassword:"hjiiij",mobilenumber:"1")}



  context "Db column",:columncheck=>true do
    #db structure test
    it{should have_db_column(:id).of_type(:integer)}
    it{should have_db_column(:username).of_type(:string)}
    it{should have_db_column(:email).of_type(:string)}
    it{should have_db_column(:password).of_type(:string)}
    it{should have_db_column(:conformpassword).of_type(:string)}
    it{should have_db_column(:mobilenumber).of_type(:string)}
  end

  context "Validation",:validation=>true do
    #Validation concepts in model using shoulda and sholdamatchergem
    it {is_expected.to validate_presence_of(:username)}
    it { should validate_presence_of(:email)}
    it { should validate_presence_of(:password)}
    it { should validate_presence_of(:conformpassword)}
    it { should validate_acceptance_of(:mobilenumber)}
    it { should_not allow_value("blah").for(:email) }
    it { should allow_value("a@b.com").for(:email) }
    it { should validate_length_of(:username).is_at_most(10)}
    it { should validate_uniqueness_of(:email) }
    it { should validate_confirmation_of(:password)}
    it { should validate_inclusion_of(:username).in_array(['honest','raj','veera','karthi','raja'])}
    it { should validate_exclusion_of(:password).in_array(%w( 1234567890 123 12345))}
   end
    #association concepts
  context "possiblity",:possiblity=>true do
    it "is valid with valid attributes" do
     expect(subject).to be_valid
   end
  end

  context "Association",:association=>true do
      #  it { should belong_to(:book) }
      #  it { should belong_to(:author) }
      #  it { should have_one(:book) }
      #  it { should have_many(:author) }

  end

    context "factory test",:factory=>true do
      it "login data test" do
        FactoryGirl.create(:login).should be_valid
      end
      # it "username test" do
      #   FactoryGirl.bulid(:usern).should be_valid
      # end
    end
      # it "transactiona example1"  do
      #   expect(Login.count).to eq 0
      # end
      # it "Validation inputs"  do
      #   Login.create!({:username=>"jhjjhnb",:email=>"hhh@gmail.com",:password=>"hhh",:conformpassword=>"hhh",:mobilenumber=>"hkjjk"})
      #   expect(Login.count).to eq 1
      # end
      # it "uniquness test"  do
      #   Login.create!([{:username=>"jhjjh",:email=>"gdf@gmail.com",:password=>"hhh",:conformpassword=>"hhh",:mobilenumber=>"hkjjk"},{:username=>"cxxcx",:email=>"gdf@gmail.com",:password=>"hjjh",:conformpassword=>"jhhjg",:mobilenumber=>"nmb"}])
      #   expect(Login.count).to eq 2
      # end
      # it "Username Length test"  do
      #   Login.create!({:username=>"jhjjhgg",:email=>"gdf@gmail.com",:password=>"hhh",:conformpassword=>"hhh",:mobilenumber=>"hkjjk"})
      #   expect(Login.count).to eq 1
      # end
      # after(:all){Login.destroy_all}




end

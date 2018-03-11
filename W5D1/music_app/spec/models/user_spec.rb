require 'rails_helper'

RSpec.describe User, type: :model do

  describe User do
    subject(:user) do
      FactoryBot.build(:user,
        email: "roni@roni.com",
        password: "password")
  end
  #validations
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password_digest) }
    it { should validate_length_of(:password).is_at_least(6) }

    it "creates a password digest when a password is given" do
      expect(user.password_digest).to_not be_nil
    end

    it "return true when password is equal to password digest" do
      expect(user.is_password?("notpassword")).to be_falsey
    end

    it "return false when password is not equal to password digest" do
      expect(user.is_password?("password")).to be_truthy
    end

    it "reset the session toke" do
      expect(user.session_token).not_to eq(user.reset_session_token!)
    end

describe ".find_by_credentials" do
  before { user.save! }
    it "find user by email and password" do
      expect(User.find_by_credentials(user.email, user.password)).to_not be_nil
    end
  end 

  end
end

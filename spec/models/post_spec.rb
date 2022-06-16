require 'rails_helper'

RSpec.describe Post, type: :model do
  context "validations" do
    it { is_expected.to validate_presence_of(:content) }
    it { is_expected.to validate_presence_of(:user) }
  end

  context "associations" do
    it { is_expected.to have_many(:comments) }
    it { is_expected.to belong_to(:user) }
  end
  
end

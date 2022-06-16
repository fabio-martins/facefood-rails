require 'rails_helper'

RSpec.describe Comment, type: :model do
  context "validations" do
    it { is_expected.to validate_presence_of(:content) }
    it { is_expected.to validate_presence_of(:user) }
    it { is_expected.to validate_presence_of(:post) }
  end

  context "associations" do
    it{ is_expected.to belong_to(:user) }
    it{ is_expected.to belong_to(:post) }
  end
end

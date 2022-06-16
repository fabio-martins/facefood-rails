require 'rails_helper'

RSpec.describe Homepage, type: :model do
  context "validations" do
    it { is_expected.to have_many(:posts) }
  end  
end

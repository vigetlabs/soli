require 'rails_helper'

RSpec.describe Guide, type: :model do
  describe "Validations" do
    subject { create(:guide) }

    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without a title" do
      should validate_presence_of(:title)
    end

    it "is not valid without a city" do
      should validate_presence_of(:city)
    end
  end
end

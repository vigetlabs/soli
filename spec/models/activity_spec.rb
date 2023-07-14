require 'rails_helper'

RSpec.describe Activity, type: :model do
  describe "Validations" do
    subject { create(:activity) }
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without a title" do
      should validate_presence_of(:title)
    end

    it "is not valid without hours to complete" do
      should validate_presence_of(:hours_to_complete)
    end
    
    it "is not valid without minutes to complete" do
      should validate_presence_of(:minutes_to_complete)
    end

    it "is not valid without location" do
      should validate_presence_of(:location)
    end

    it "is not valid without prompt" do
      should validate_presence_of(:prompt)
    end

    it "is not valid without prompt answer" do
      should validate_presence_of(:prompt_answer)
    end
  end

  describe "Associations" do
    it { should belong_to(:guide) }
  end
end


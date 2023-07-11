require 'rails_helper'

RSpec.describe Guide, type: :model do
  describe "Validations" do
    subject {
      described_class.new(title: "Test Guide", 
                          city: "Falls Church")
    }

    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without a title" do
      subject.title = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a city" do
      subject.city = nil
      expect(subject).to_not be_valid
    end
  end
end

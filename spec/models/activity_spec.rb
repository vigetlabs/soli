require 'rails_helper'

RSpec.describe Activity, type: :model do
  describe "Validations" do
    let(:guide) {
      Guide.create(title: "Test Guide", 
                city: "Falls Church")
    }
    subject {
      described_class.new(title: "Test Activity", 
                          location: "Falls Church, VA",
                          hours_to_complete: 2,
                          minutes_to_complete: 30,
                          prompt: "When I was here, I felt...",
                          prompt_answer: "like I was testing something.",
                          guide_id: guide.id)
    }
    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without a title" do
      subject.title = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without hours to complete" do
      subject.hours_to_complete = nil
      expect(subject).to_not be_valid
    end
    
    it "is not valid without minutes to complete" do
      subject.minutes_to_complete = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without location" do
      subject.location = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without prompt" do
      subject.prompt = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without prompt answer" do
      subject.prompt_answer = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without guide id" do
      subject.guide_id = nil
      expect(subject).to_not be_valid
    end
  end

  describe "Associations" do
    it { should belong_to(:guide) }
  end
end


require "rails_helper"

describe Photo do
  it { should validate_presence_of(:caption) }
  it { should belong_to(:user) }
  it { should have_many(:comments) }  

  describe "validations" do
    it "requires caption" do
      photo = Photo.new(caption: nil)
      photo.save
      
      expect(photo.errors[:caption]).not_to be_empty
    end
    it "requires image" do
      photo = Photo.new(image: nil)
      photo.save
      
      expect(photo.errors[:image]).not_to be_empty
    end
  end
end
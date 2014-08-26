require "spec_helper"

describe "Photo" do
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
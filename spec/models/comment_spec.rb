require "spec_helper"

describe "Comment" do
  describe "validations" do
    it "requires comment" do
      comment = Comment.new(comment: nil)
      comment.save
      
      expect(comment.errors[:comment]).not_to be_empty
    end
    it "requires photo id" do
      comment = Comment.new(photo_id: nil)
      comment.save
      
      expect(comment.errors[:photo_id]).not_to be_empty
    end
  end
end
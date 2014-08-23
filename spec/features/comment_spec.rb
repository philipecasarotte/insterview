require "spec_helper"
require "rails_helper"

feature "Comment" do
  scenario "post with valid data" do
    # visit "/photo/1"
#     fill_in "Comment", with: "This is what I want to say!"
#     click_button "Post Comment"
#
#     expect(current_path).to eql(new_photo_path)
#     expect(page).to have_content("This is what I want to say!")
  end
  
  scenario "post with invalid data" do
    # visit "/photo/1"
#     click_button "Post Comment"
#
#     expect(current_path).to eql(new_photo_path)
#     expect(page).to have_content("Nope! Nope!")
  end
end
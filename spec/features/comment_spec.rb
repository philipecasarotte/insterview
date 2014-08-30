require "rails_helper"

feature "Comment" do
  scenario "post with valid data" do
    photo = FactoryGirl.create(:photo)
    visit photo_path(photo)
    fill_in "Comment", with: "This is what I want to say!"
    click_button "Post Comment"

    expect(current_path).to eql(photo_path(photo))
    expect(page).to have_content("This is what I want to say!")
  end
  
  scenario "post with invalid data" do
    photo = FactoryGirl.create(:photo)
    visit photo_path(photo)
    click_button "Post Comment"

    expect(current_path).to eql(photo_path(photo))
    expect(page).to have_content("Nope! Nope!")
  end
end
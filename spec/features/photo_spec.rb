require "spec_helper"
require "rails_helper"

feature "Photo" do
  scenario "post with valid data" do
    visit "/"
    fill_in "Caption", with: "This Photo looks awesome!"
    click_button "Share My Photo"
    
    expect(current_path).to eql(new_photo_path)
    expect(page).to have_content("Thanks for sharing your photo!")
  end
  
  scenario "post with invalid data" do
    visit "/"
    click_button "Share My Photo"
    
    expect(current_path).to eql(new_photo_path)
    expect(page).to have_content("Can't share this.")
  end
end
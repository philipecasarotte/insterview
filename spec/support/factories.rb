FactoryGirl.define do
  factory :photo do
    caption "This photo is cool"
    image { File.new("#{Rails.root}/spec/support/fixtures/files/test.jpg") } 
  end
end
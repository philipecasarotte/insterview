class Photo < ActiveRecord::Base
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  
  default_scope { order('created_at DESC') }
  
  has_many :comments
  belongs_to :user

  validates_presence_of :caption, :message => "Your photo must have a caption."
end

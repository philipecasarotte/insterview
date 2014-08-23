class Comment < ActiveRecord::Base
  belongs_to :photo, :counter_cache => true
  
  default_scope { order('created_at DESC') }
  
  # validates_presence_of :comment, :message => "Come on! You gotta say something."
  validates :photo_id, :presence => true
end

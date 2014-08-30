class Comment < ActiveRecord::Base
  belongs_to :photo, :counter_cache => true
  belongs_to :user
  
  default_scope { order('created_at DESC') }
  
  validates_presence_of :comment
  validates_presence_of :photo_id
end
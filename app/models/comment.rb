class Comment < ActiveRecord::Base
  belongs_to :photo, :counter_cache => true
  belongs_to :user
  
  default_scope { order('created_at DESC') }
  
  validates_presence_of :comment, :message => "Come on! You gotta say something."
  validates_presence_of :photo_id, :message => "Are you trying to comment on what exactly?! Please, we are talking about Photos here."
end

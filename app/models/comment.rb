class Comment < ActiveRecord::Base
  belongs_to :photo, :counter_cache => true
  
  default_scope { order('created_at DESC') }
end

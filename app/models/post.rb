class Post < ActiveRecord::Base
  attr_accessible :content, :date_published, :title, :user_id
  belongs_to :user
end

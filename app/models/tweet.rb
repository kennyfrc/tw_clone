class Tweet < ActiveRecord::Base
  validates_length_of :description, :maximum=>140
  attr_accessible :description, :user_id
  belongs_to :user
  
end

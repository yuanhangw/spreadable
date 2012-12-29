class Event < ActiveRecord::Base
  attr_accessible :body, :title
  has_many :spreads ,:as => :spreadable, dependent: :destroy


end

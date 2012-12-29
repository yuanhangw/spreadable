class Spread < ActiveRecord::Base
  attr_accessible :body, :title
  has_many :spreads , :as => :spreadable 
  belongs_to :spreadable , :polymorphic => true


  def event
  
  spreadable.is_a?(Event) ? spreadable : spreadable.event


  end

end

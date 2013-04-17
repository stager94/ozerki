class Social < ActiveRecord::Base
	before_create :auto_position
	before_update :auto_position


  attr_accessible :display, :image, :path, :position, :title, :image_class

  validates_presence_of :title, :path, :image_class

  scope :displayed, where('display = ?', true).order('position ASC')

  def auto_position
  	if self.position.blank?
  		if !Social.maximum("position").nil?
  			self.position = Social.maximum("position")+1 
  		else
  			self.position = 0
  		end
  	end
  end
end
class Social < ActiveRecord::Base
	before_create :auto_position
	before_update :auto_position

	has_attached_file :image

  attr_accessible :display, :image, :path, :position, :title, :image_class

  validates_presence_of :title, :image, :path, :image_class

  scope :displayed, where('display = ?', true).order('position ASC')

  def auto_position
  	if self.position.blank?
  		if !Video.maximum("position").nil?
  			self.position = Video.maximum("position")+1 
  		else
  			self.position = 0
  		end
  	end
  end
end
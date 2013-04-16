class Video < ActiveRecord::Base
	before_create :auto_position
	before_update :auto_position

  attr_accessible :description, :display, :path, :position, :title

  validates_presence_of :title, :path

  scope :displayed, where('display = ?', true).order('created_at DESC')

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

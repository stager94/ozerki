class Video < ActiveRecord::Base
	before_create :auto_position
	before_update :auto_position

  attr_accessible :description, :display, :path, :position, :title, :image

  validates_presence_of :title, :path

  has_attached_file :image, styles: { original: "320x180#" }

  scope :displayed, where('display = ?', true).order('created_at DESC')

  def draw
  	if self.image.exists?
  		"#{image}"
  	else
  		"http://i1.ytimg.com/vi/#{self.path}/mqdefault.jpg"
  	end
  end

  def link
  	"http://www.youtube.com/watch?v=#{self.path}"
  end

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

class Video < ActiveRecord::Base
	before_create :auto_position
	before_update :auto_position
	before_create :set_duration
	before_update :set_duration
  before_create :set_title
  before_update :set_title

  attr_accessible :description, :display, :path, :position, :title, :image

  validates_presence_of :path

  has_attached_file :image, styles: { original: "320x180#", default: "120x90", mqdefault: "320x180" }

  scope :displayed, where('display = ?', true).order('created_at DESC')

  def draw(size = 'mqdefault')
  	if self.image.exists?
  		image(:"#{size}")
  	else
		  "http://i1.ytimg.com/vi/#{path}/#{size}.jpg"
  	end
  end

  def link
  	"http://www.youtube.com/watch?v=#{self.path}"
  end

  def get_duration
  	Time.at(self.duration).gmtime.strftime('%H:%M:%S')
  end

  private

  def set_duration
  	self.duration = YoutubeSearch.search(self.path).first['duration']
  end

  def set_title
    self.title = YoutubeSearch.search(self.path).first['title'] if self.title.blank?
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

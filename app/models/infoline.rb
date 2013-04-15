class Infoline < ActiveRecord::Base
	before_create :auto_position, :auto_title
	before_update :auto_position, :auto_title

  belongs_to :new
  belongs_to :page
  attr_accessible :display, :path, :route, :title, :new_id, :page_id, :position

  scope :displayed, where('display = ?', true).order('position DESC')

  validates_presence_of :route

  def auto_position
  	if self.position.blank?
  		if !Infoline.maximum("position").nil?
  			self.position = Infoline.maximum("position")+1 
  		else
  			self.position = 0
  		end
  	end
  end

  def auto_title
  	if self.title.blank?
  		self.title = New.find(self.new_id).title if self.route == 'new'
  		self.title = self.page.title if self.route == 'page'
  		self.title = self.path if self.route == 'path'
  	end
  end
end

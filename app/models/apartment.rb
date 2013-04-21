class Apartment < ActiveRecord::Base
  attr_accessible :apartment_class, :display, :free_room, :room_number, :title

  validates_presence_of :apartment_class, :free_room, :room_number, :title

  scope :displayed, where('display = ?', true)

  def image
  	if self.free_room == self.room_number
  		"house_1.png"
  	elsif self.free_room == 0
  		"house_3.png"
  	else
  		"house_2.png"
  	end
  end

  def badge
  	percent = self.free_room/self.room_number
  	if self.free_room == self.room_number
  		"green"
  	elsif self.free_room == 0
  		"red"
  	else
  		"yellow"
  	end
  end
end

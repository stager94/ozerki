class Apartment < ActiveRecord::Base
  attr_accessible :apartment_class, :display, :free_room, :room_number, :title, :free_place

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

  def free_room_text
    "#{Russian::p(self.free_room, I18n.t('room.free_one'), I18n.t('room.free_few'), I18n.t('room.free_zero'))} #{self.free_room} #{Russian::p(self.free_room, I18n.t('room.one'), I18n.t('room.few'), I18n.t('room.zero'))}"
  end

  def free_place_text
    "#{I18n.t 'room.free_place'} #{self.free_place}"
  end
end

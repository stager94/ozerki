class Apartment < ActiveRecord::Base
  attr_accessible :apartment_class, :display, :free_room, :room_number, :title

  validates_presence_of :apartment_class, :free_room, :room_number, :title
end

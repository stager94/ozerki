class Booking < ActiveRecord::Base
  attr_accessible :email, :from, :name, :phone, :places, :to
end

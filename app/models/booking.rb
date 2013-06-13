class Booking < ActiveRecord::Base
  attr_accessible :email, :from, :name, :phone, :places, :to

  validates_presence_of :name, :from, :to, :email, :places, :phone
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/ }
  validates :places, numericality: { only_integer: true }
	
	validates :phone, format: { with: /^\(\d{3}\) \d{3}-\d{4}$/,
    :message => I18n.t('errors_messages.phone') }
end

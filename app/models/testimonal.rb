class Testimonal < ActiveRecord::Base
  attr_accessible :address, :author, :email, :testimonal, :display

  scope :displayed, where('display = ?', true).order('updated_at DESC')

  validates_presence_of :testimonal, :author
end

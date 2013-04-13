class CategoryGallery < ActiveRecord::Base
  has_many :gallery
  
	before_create :create_alias
	before_save :create_alias

	acts_as_nested_set

	attr_protected :lft, :rgt

  attr_accessible :depth, :display, :keywords, :lft, :parent_id, :rgt, :slug, :snippet, :title

  scope :main, order('lft ASC')

  validates_presence_of :title
  validates_uniqueness_of :slug, :title

  def to_param
    "#{id} #{slug}".parameterize
  end

  private
  def create_alias
		self.slug = self.title.parameterize unless !self.slug.blank?
  end
end

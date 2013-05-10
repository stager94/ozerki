class CategoryNew < ActiveRecord::Base
	has_many :new, dependent: :destroy
	before_create :create_alias
	before_save :create_alias

	acts_as_nested_set

	attr_protected :lft, :rgt

	scope :main, order('lft ASC')
  attr_accessible :id, :keywords, :parent_id, :slug, :snippet, :title, :display, :lft, :rgt, :depth

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

class Page < ActiveRecord::Base
	before_create :create_alias
	before_update :create_alias

  attr_accessible :slug, :author, :keywords, :snippet, :text, :title

  validates_presence_of :title, :text, :snippet, :keywords
  validates_uniqueness_of :slug

  def to_param
    "#{id} #{slug}".parameterize
  end

  def category
    CategoryNew.find(self.category_new_id)
  end

  private
  def create_alias
		self.slug = self.title.parameterize unless !self.slug.blank?
  end
end

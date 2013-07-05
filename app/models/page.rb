class Page < ActiveRecord::Base
	before_create :create_alias
	before_update :create_alias
  after_update :clear_page_cache

  before_update :set_lower_title
  before_create :set_lower_title

  attr_accessible :slug, :author, :keywords, :snippet, :text, :title

  validates_presence_of :title, :text, :snippet, :keywords
  validates_uniqueness_of :slug

  def to_param
    "#{id} #{slug}".parameterize
  end

  def category
    CategoryNew.find(self.category_new_id)
  end

  def clear_page_cache
    ActionController::Base.new.expire_fragment "page_#{id}_cache"
  end

  private
  def create_alias
		self.slug = self.title.parameterize unless !self.slug.blank?
  end

  def set_lower_title
    new_title = self.title
    self.lower_title = new_title.mb_chars.downcase.to_s
  end
end

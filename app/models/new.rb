class New < ActiveRecord::Base
  belongs_to :new, class_name: 'Category::New'
	before_create :create_alias
	before_update :create_alias
	
  attr_accessible :slug, :author, :content, :display, :root, :snippet, :title, :precontent, :category_new_id

  validates_presence_of :title, :content
  validates_uniqueness_of :slug

  def to_param
    "#{id} #{slug}".parameterize
  end

  def category
    Category::New.find(self.category_new_id)
  end

  private
  def create_alias
		self.slug = self.title.parameterize unless !self.slug.blank?
  end
end

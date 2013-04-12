class New < ActiveRecord::Base
  belongs_to :category_new
  acts_as_taggable

	before_create :create_alias
	before_update :create_alias
	
  attr_accessible :slug, :author, :content, :display, :root, :snippet, :title, :precontent, :category_new_id, :tag_list, :position

  validates_presence_of :title, :content, :snippet, :tag_list
  validates_uniqueness_of :slug

  scope :displayed, where('display = ?', true).where('root = ?', false).order('created_at DESC')
  scope :root, where('root = ?', true).where('root = ?', true).order('position ASC')

  scope :admin_news, where('root != ?', true)
  scope :admin_root, where('root = ?', true)

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

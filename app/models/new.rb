# coding: utf-8
class New < ActiveRecord::Base
  belongs_to :category_new
  acts_as_taggable

	before_create :create_alias
	before_update :create_alias
  before_update :set_lower_title
  before_create :set_lower_title
	
  attr_accessible :slug, :author, :content, :display, :root, :snippet, :title, :precontent, :category_new_id, :tag_list, :position, :news_id

  validates_presence_of :title, :content, :snippet
  validates_uniqueness_of :slug

  scope :displayed, where('display = ?', true).where('root = ?', false).order('created_at DESC')
  scope :root, where('display = ?', true).where('root = ?', true).where('root = ?', true).order('position ASC')

  scope :admin_news, where('root != ?', true)
  scope :admin_root, where('root = ?', true)

  def to_param
    "#{id} #{slug}".parameterize
  end

  def category
    CategoryNew.find(self.category_new_id)
  end

  def next
    New.first(conditions: ['id > ? AND category_new_id = ? AND display = ?', self.id, self.category_new_id, true], order: 'created_at ASC')
  end

  def prev
    New.first(conditions: ['id < ? AND category_new_id = ? AND display = ?', self.id, self.category_new_id, true], order: 'created_at DESC')
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

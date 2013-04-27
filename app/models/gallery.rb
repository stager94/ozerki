class Gallery < ActiveRecord::Base
	before_create :create_alias
	before_save :create_alias

  belongs_to :category_gallery, counter_cache: true

  attr_accessible :author, :description, :display, :keywords, :photo, :slug, :title, :category_gallery_id, :display_on_root

  validates_presence_of :title, :category_gallery

  has_attached_file :photo, styles: { small: "100x100#", medium: "200x200#" }

  scope :module, where('display_on_root = ?', true).order('random()').limit(4) if Rails.env.development?
  scope :module, where('display_on_root = ?', true).order('RAND()').limit(4) if Rails.env.production?

  def to_param
    "#{id} #{slug}".parameterize
  end

  private
  def create_alias
		self.slug = self.title.parameterize unless !self.slug.blank?
  end
end

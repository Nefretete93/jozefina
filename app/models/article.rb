class Article < ActiveRecord::Base
	belongs_to :user
	has_many :comments, dependent: :destroy

	scope :last_blogs, -> { order('created_at DESC').limit(3)}
	scope :all_articles, -> { order('created_at DESC')}
	scope :list_of_articles, -> {order('updated_at DESC').limit(10)}

	validates :title, presence: true

	has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end

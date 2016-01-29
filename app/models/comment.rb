class Comment < ActiveRecord::Base
	belongs_to :article
	validates :nick, presence: true, length: {minimum: 4, maximum: 15}
	validates :text, presence: true, length: {maximum: 200}
end

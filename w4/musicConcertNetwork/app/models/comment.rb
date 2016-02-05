class Comment < ActiveRecord::Base
	belongs_to :concert
	validates :textComment, presence: true
end

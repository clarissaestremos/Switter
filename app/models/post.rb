class Post < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	#has_many :sweets
	validates :body, presence: true,
                    length: { maximum: 140 }
end

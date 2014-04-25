class Swit < ActiveRecord::Base
	validates :username, presence: true,
                    length: { minimum: 6 }
end

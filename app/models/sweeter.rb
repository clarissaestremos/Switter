class Sweeter < ActiveRecord::Base
	has_secure_password 

	validates :username, presence: true,
                    length: { minimum: 6 }

    validates :password, presence: true,
                    length: { minimum: 6 }
end

class Community < ActiveRecord::Base
	validates :name, presence: true
	validates :name, uniqueness: true
	validates :name, length: {minimum: 4, message: 'must be at least four characters long.'}
end

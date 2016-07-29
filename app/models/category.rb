class Category < ActiveRecord::Base
	has_many :posts
	validates :name, presence: true

	def self.search(search)
  		where("name like ?", "%#{search}%") 

	end
end

class Post < ActiveRecord::Base
	belongs_to :user
	belongs_to :category
	has_many :comments

	validates :title, presence: true
	validates :category_id, presence: true
	validates :body, presence: true

	has_attached_file :image, :default_url => ':style/user.jpg'
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
			
	def self.search(search)
	  where("title like ? OR body like ?", "%#{search}%", "%#{search}%") 

	end

end

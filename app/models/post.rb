class Post < ApplicationRecord
	acts_as_votable
	belongs_to :user
	has_attached_file :image, styles: { medium: "700x500#", small: "350x250>" }
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  	has_many :comments
end

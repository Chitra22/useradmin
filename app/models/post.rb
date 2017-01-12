class Post < ApplicationRecord
	  belongs_to :user 
	  max_paginates_per 20
	 has_many :comments, :dependent => :destroy


def self.search(search)
  where("name LIKE ?", "%#{search}%") 
end


has_attached_file :photo, :styles => { :small => "150x150>" },
                  :url  => "/assets/posts/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/posts/:id/:style/:basename.:extension"

validates_attachment_presence :photo
validates_attachment_size :photo, :less_than => 5.megabytes
validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']

end



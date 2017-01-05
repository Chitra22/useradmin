class Post < ApplicationRecord
	 
	 #before_create :update_created_by
	 belongs_to :user , optional: true
	 has_many :comments, :dependent => :destroy

end

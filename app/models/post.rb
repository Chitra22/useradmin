class Post < ApplicationRecord
	  max_paginates_per 20
	 has_many :comments, :dependent => :destroy
end

class Comment < ApplicationRecord
	attr_accessor :name,:body
  belongs_to :post
end

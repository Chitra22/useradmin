class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
<<<<<<< HEAD
         :recoverable, :rememberable, :trackable, :validatable

=======
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
>>>>>>> 9b363ef561ea65dae5fc8656cc03647f5773d0e6
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
end

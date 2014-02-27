class User < ActiveRecord::Base
  validates :first_name, :presence => true, :uniqueness => true
  validates :last_name, :presence => true, :uniqueness => true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

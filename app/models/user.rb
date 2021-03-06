class User < ActiveRecord::Base
  has_many :questions
  has_many :answers
  has_many :corrections

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

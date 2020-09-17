class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :pets
  has_many :matchings
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
end
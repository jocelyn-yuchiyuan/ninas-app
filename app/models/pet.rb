class Pet < ApplicationRecord
  belongs_to :user
  has_many :matchings
  has_one_attached :photo

  validates :name, :age, :profile, :breed, presence: true
end

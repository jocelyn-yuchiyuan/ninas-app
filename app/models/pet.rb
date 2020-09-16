class Pet < ApplicationRecord
  belongs_to :user
  has_many :matchings

  validates :name, :age, :profile, :breed, presence: true
end

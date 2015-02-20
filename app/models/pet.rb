class Pet < ActiveRecord::Base
  validates :name, presence: true
  validates :breed, presence: true
  belongs_to :user
  validates :user, presence: true
  has_many :tasks
end

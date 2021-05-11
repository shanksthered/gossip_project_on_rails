class Gossip < ApplicationRecord
  belongs_to :user, optional: true
  has_many :tags, through: :clouds

  validates :title, presence: true,
  length: { minimum: 3, maximum: 14}
  #validates :content, presence: true 
end

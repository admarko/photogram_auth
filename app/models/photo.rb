class Photo < ApplicationRecord
  has_many :fans, :through => :likes, :source => :user
  belongs_to :user

  validates :user_id, presence: true
end

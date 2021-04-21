class Book < ApplicationRecord
  validates :title
  validates :genre
  validates :content
  validates :recommend
  validates :image

  belongs_to :user
  has_many   :comments
end

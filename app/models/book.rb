class Book < ApplicationRecord
  validates :title    , presence: true
  validates :genre    , presence: true
  validates :content  , presence: true
  validates :recommend, presence: true

  belongs_to       :user
  has_many         :comments
  has_one_attached :image
end

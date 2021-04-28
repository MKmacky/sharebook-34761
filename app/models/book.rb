class Book < ApplicationRecord

  belongs_to       :user
  has_many         :comments
  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre
  
  with_options presence: true do
    validates :title
    validates :genre_id, numericality: { other_than: 0 }
    validates :content
    validates :recommend
  end

end
class Book < ApplicationRecord
  with_options presence: true do
    validates :title    
    validates :genre    
    validates :content  
    validates :recommend
  end

  belongs_to       :user
  has_many         :comments
  has_one_attached :image
end

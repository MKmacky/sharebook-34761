class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :name
    with_options numericality: { other_than: 0 } do
      validates :age_id
      validates :position_id 
    end
  end
  
  has_many :books
  has_many :comments
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :age
  belongs_to :position
end

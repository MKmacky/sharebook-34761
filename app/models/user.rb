class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name,     presence: true
  validates :age,      presence: true
  validates :position, presence: true

  has_many :books
  has_many :comments
end

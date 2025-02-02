class Merchant < ApplicationRecord
  has_one :idproof ,dependent: :destroy
  
  validates :email ,presence: true 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

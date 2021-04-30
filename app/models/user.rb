class User < ApplicationRecord
  include Interface
  # Include default devise modules. Others available are:
  # :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :token_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable,
         :confirmable,
         :lockable

         validates :username, presence: true, uniqueness: true
         validates :first_name, presence: true
end

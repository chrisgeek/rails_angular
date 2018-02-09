class User < ActiveRecord::Base
  # Include default devise modules.
  has_many :novels
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :omniauthable
  include DeviseTokenAuth::Concerns::User
end

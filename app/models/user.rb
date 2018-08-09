class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one   :user_role
  has_one   :role, through: :user_role
  has_one   :user_attribute
  has_many  :law_categories, as: :lawable
  has_many  :cases

  def admin?
    self.role.name == 'admin'
  end

  def stats
    self.user_attribute
  end
end

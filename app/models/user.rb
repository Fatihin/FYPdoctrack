class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :iduser, presence: true, length: { maximum: 10 }, uniqueness: true
  
  has_many :documents, dependent: :destroy
  has_many :tasks


   def admin?
  has_role?(:admin)
	end
 
  def staffhep?
  has_role?(:staffhep)
  end 

end

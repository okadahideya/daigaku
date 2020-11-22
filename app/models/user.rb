class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  with_options presence: true do
    validates :name
    validates :name_k
    validates :nickname
    validates :age
    validates :birthday
    validates :university
    validates :undergraduate
    validates :study_subject
    validates :grade
  end
end

class User < ApplicationRecord
  has_one :patient
  has_one :doctor
  accepts_nested_attributes_for :patient
  accepts_nested_attributes_for :doctor
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         after_initialize :set_defaults
         def set_defaults
           self.img ||= "https://via.placeholder.com/350x250"
         end
end

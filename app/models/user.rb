class User < ActiveRecord::Base
  has_one :profile
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :store     
  accepts_nested_attributes_for :profile, :roles
end

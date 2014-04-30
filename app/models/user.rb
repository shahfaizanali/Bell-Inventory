class User < ActiveRecord::Base
  before_save :generate_api_key, :only=> :create
  has_one :profile
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :store     
  accepts_nested_attributes_for :profile, :roles
  def generate_api_key
    self.api_key=Digest::MD5.hexdigest(self.email)
  end
end

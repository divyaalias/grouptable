class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :secret_code
 
  def self.update_secret_code(secret_code,user_id)
  	SecretCode.create(secret_code: secret_code, user_id: user_id)
  end
end

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :wheel
  has_many :answers, through: :wheel   

  def wheel_from_session
  	# Wheel.find(session[:wheel_id]).update_attribute(:user_id,self.id)
   #  session[:wheel_id] = nil
  end
end

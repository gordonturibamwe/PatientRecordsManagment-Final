class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

   has_one :patient

	def make_doctor
		if self.email == "gorkxs@hotmail.com"
			self.doctor = true
		else
			self.doctor = false
		end
	end
end

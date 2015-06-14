class Patient < ActiveRecord::Base
<<<<<<< HEAD
	has_many :summaries, :dependent => :destroy
	has_one :contact, :dependent => :destroy
	has_many :medicines, :dependent => :destroy
=======
	validates :firstName, :lastName, :dob, :proxyName, presence: true
	validates :gender, length:{maximum: 6}
	validates :proxyTelephone, length:{maximum: 15}

	def id_number
		"PRM . " + self.id.to_s
	end

	def age
		Time.now.year - self.dob.year
	end
>>>>>>> 234c9b8af761cd64312d5ac2a3a601d1ccb93988
end

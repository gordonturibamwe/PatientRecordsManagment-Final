class Patient < ActiveRecord::Base
	validates :firstName, :lastName, :dob, :proxyName, presence: true
	validates :gender, length:{maximum: 6}
	validates :proxyTelephone, length:{maximum: 15}

	def id_number
		"PRM . " + self.id.to_s
	end

	def age
		Time.now.year - self.dob.year
	end
end

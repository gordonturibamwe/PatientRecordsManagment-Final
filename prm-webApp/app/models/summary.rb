class Summary < ActiveRecord::Base
  belongs_to :patient
  has_many :medicines
end

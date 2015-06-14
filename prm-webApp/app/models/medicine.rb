class Medicine < ActiveRecord::Base
  belongs_to :summary, polymorphic: true
end

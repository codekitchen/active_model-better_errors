class User < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, message: "plz...?"
end

class Ruler < ActiveRecord::Base
  validates_numericality_of :length, less_than_or_equal_to: 12, greater_than_or_equal_to: 4
end

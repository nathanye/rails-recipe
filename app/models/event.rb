class Event < ApplicationRecord

 validates_presence_of :name, :friendly_id

 def to_param
   "#{self.id}-#{self.name}"
 end

end

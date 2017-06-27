class Event < ApplicationRecord

 validates_presence_of :name, :friendly_id

 before_validation :generate_friendly_id, :on => :create

 def to_param
   self.friendly_id
 end

 protected

 def generate_friendly_id
   self.friendly_id ||= SecureRandom.uuid
 end

end

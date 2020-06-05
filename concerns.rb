module Concerns
  module ClassMethods
    def create(hash)
      object = self.new(hash)
      object.save
      object
    end
  end

  module InstanceMethods
    def save
      self.class.all << self
    end
  end
end
class HandyStuff < ApplicationRecord
    def self.europe
    where(land: 1)
  end

  def self.usa
    where(land:0)
  end
end

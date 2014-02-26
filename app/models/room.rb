class Room < ActiveRecord::Base
  belongs_to :hotel
  #attr_accessible :bedrooms, :beds, :booking_status, :fridge, :microwave, :name, :nightly_rate, :sauna, :smoke_free, :television
  
  state_machine :initial => :empty do
    event :booked do
      transition :empty => :occupied
    end      
  end
end

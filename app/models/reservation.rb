class Reservation
  include Mongoid::Document

  field :reserved_by, type: String
  field :reserved_on, type: Date 
  field :reserved_to, type: Date
  
  field :state

  belongs_to :room, after_add: :send_email
  
  aasm do
    state :available, initial: true
    state :reserved
    
    event reserve_room do
      before { self.reserved_on = Date.today } 
      transitions from: :available, to: :reserved
    end  
    
    event check_out do
      after { self.reserved_to = Date.today } 
      transitions from: :reserved, to: :available
    end  
  end
end
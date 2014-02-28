class Hotel
  include Mongoid::Document
  include AASM

  field :name, type: String

  has_many :rooms
  embeds_one :address

  accepts_nested_attributes_for :address, :rooms

  field :state

  aasm do
    
  end

  def send_email(room)
    puts "Send email: #{room.inspect}"
  end
end

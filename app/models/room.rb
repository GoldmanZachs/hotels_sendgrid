class Room
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  include AASM

  field :t, as: :title, type: String
  field :price, type: Float

  field :status, type: Integer

  field :reserved, type: Boolean
  field :reserved_on, type: Date
  field :reserved_by, type: String
  field :reserved_count, type: Integer
  
  field :state

  aasm do
    
  end

  belongs_to :hotel

  index({t: 1}, {background: true})
end

class Reservation
  include Mongoid::Document

  field :reserved_by, type: String
  field :reserved_on, type: Date

  belongs_to :room, after_add: :send_email
end
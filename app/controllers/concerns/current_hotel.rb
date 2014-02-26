module CurrentHotel
  extend ActiveSupport::Concern
  
  private
  
  def set_hotel
    @hotel = Hotel.find(session[:hotel_id])
  rescue ActiveRecord::RecordNotFound
    @hotel = Hotel.create
    session[:hotel_id] = @hotel.id
  end
end
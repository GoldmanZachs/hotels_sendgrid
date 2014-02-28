class HotelsController < ApplicationController
  def index
    @hotels = Hotel.all.includes(:rooms)
  end

  def new
    @hotel = Hotel.new
    @hotel.build_address
    @hotel.rooms.build
    @hotel.rooms.build
  end

  def create
    @hotel = Hotel.new(hotel_params)
    if @hotel.save
      redirect_to hotels_path
    else
      render :new
    end
  end

private
  def hotel_params
    params.require(:hotel).permit(:name, :last_name, :address_attributes => [:street, :city, :state, :zipcode, :country], 
                                   :books_attributes => [:title, :price])
  end
end

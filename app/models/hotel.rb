class Hotel < ActiveRecord::Base
  has_many :rooms, dependent: :destroy
  
  #attr_accessible :address, :city, :email, :free_breakfast, :gym, :hot_tub, :name, :phone, :pool, :state, :website
  
  state_machine :initial => :vacancies do
    event :all_rooms_filled do
      transition :vacancies => :no_vacancies
    end    
    event :least_one_room_empty do
      transition :vno_acancies => :vacancies
    end    
  end  
end

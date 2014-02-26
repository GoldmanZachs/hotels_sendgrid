class Hotel < ActiveRecord::Base
  has_many :rooms, dependent: :destroy
  
  #attr_accessible :address, :city, :email, :free_breakfast, :gym, :hot_tub, :name, :phone, :pool, :state, :website
  
  state_machine :initial => :vacancies do
    event :last_room_filled do
      transition :vacancies => :no_vacancies
    end    
  end  
end

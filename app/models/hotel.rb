class Hotel < ActiveRecord::Base
  attr_accessible :address, :city, :email, :free_breakfast, :gym, :hot_tub, :name, :phone, :pool, :state, :website
  
  state_machine :initial => :vacancies do
    
  end  
end

class Location < ActiveRecord::Base
  attr_accessible :address, :gmaps, :latitude, :longitude, :name
  

  acts_as_gmappable :check_process => false
  
  def gmaps4rails_address
   self.address
  end

  # acts_as_gmappable :latitude => 'lat', :longitude => 'lng', :checker => :prevent_geocoding,
  #                   :address => "address", :normalized_address => "address",
  #                   :msg => "Sorry, not even Google could figure out where that is"
  # 
  # def prevent_geocoding
  #   address.blank? || (!latitude.blank? && !longitude.blank?) 
  # end

end
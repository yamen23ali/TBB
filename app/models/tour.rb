class Tour < ActiveRecord::Base
  belongs_to :city
  belongs_to :producer, :class_name => 'User', :foreign_key => 'user_id'

  has_many :reviews
  has_many :attractions

  def self.search(price, city, country)
  	tours = Tour.all
  	tours = tours.where(price: price) unless  price.blank? 
  	tours = tours.where(city: city) unless  city.blank? 
  	tours = tours.joins(:city).where(:cities => { country_id: country} ) unless  country.blank?

  	tours
  end

end

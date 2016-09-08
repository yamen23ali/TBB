class TouristAttraction < ActiveRecord::Base
  belongs_to :tour
  geocoded_by :address 
end

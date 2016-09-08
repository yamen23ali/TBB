class TouristAttraction < ActiveRecord::Base
  
  belongs_to :tour

  has_many :tourist_attraction_details

  has_many :images, -> { image }, :class_name => 'Attachment' # image scope from attachment
  has_many :audios, -> { audio }, :class_name => 'Attachment' # audio scope from attachment

  geocoded_by :address 
end

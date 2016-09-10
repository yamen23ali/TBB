class TouristAttraction < ActiveRecord::Base
  
  belongs_to :tour

  has_many :tourist_attraction_details

  has_many :images, -> { image }, :class_name => 'Attachment' # image scope from attachment
  has_many :audios, -> { audio }, :class_name => 'Attachment' # audio scope from attachment

  has_many :details, :class_name => 'TouristAttractionDetail'

  geocoded_by :address 

  def images_urls
  	images.map{|image| image.url}
  end

   def audios_urls
  	audios.map{|audio| audio.url}
  end
end

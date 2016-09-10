class Attraction < ActiveRecord::Base
  
  belongs_to :tour

  has_many :attraction_details

  has_many :images, -> { image }, :class_name => 'Attachment' # image scope from attachment
  has_many :audios, -> { audio }, :class_name => 'Attachment' # audio scope from attachment

  has_many :details, :class_name => 'AttractionDetail'

  geocoded_by :address 

  def images_urls
  	images.map{|image| image.url}
  end

   def audios_urls
  	audios.map{|audio| audio.url}
  end
end

class TouristAttractionDetail < ActiveRecord::Base
  belongs_to :tourist_attraction

  has_many :images, -> { image }, :class_name => 'Attachment' # image scope from attachment
  has_many :audios, -> { audio }, :class_name => 'Attachment' # audio scope from attachment

  def images_urls
  	images.map{|image| image.url}
  end

   def audios_urls
  	audios.map{|audio| audio.url}
  end
end

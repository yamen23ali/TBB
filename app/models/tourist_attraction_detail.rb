class TouristAttractionDetail < ActiveRecord::Base
  belongs_to :tourist_attraction

  has_many :images, -> { image }, :class_name => 'Attachment' # image scope from attachment
  has_many :audios, -> { audio }, :class_name => 'Attachment' # audio scope from attachment
end

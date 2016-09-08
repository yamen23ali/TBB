class Attachment < ActiveRecord::Base
  belongs_to :tourist_attraction
  belongs_to :tourist_attraction_detail
  belongs_to :attachment_type

  scope :image, -> {
  	where(attachment_type: 1)
  }

  scope :audio, -> {
  	where(attachment_type: 2)
  }
end

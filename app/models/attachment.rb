class Attachment < ActiveRecord::Base
  belongs_to :attraction
  belongs_to :attraction_detail
  belongs_to :attachment_type

  scope :image, -> {
  	where(attachment_type: 1)
  }

  scope :audio, -> {
  	where(attachment_type: 2)
  }
end

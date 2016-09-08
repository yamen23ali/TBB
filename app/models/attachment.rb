class Attachment < ActiveRecord::Base
  belongs_to :tourist_attraction
  belongs_to :tourist_attraction_detail
  belongs_to :attachment_type
end

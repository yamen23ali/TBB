class Tour < ActiveRecord::Base
  belongs_to :city
  belongs_to :producer, :class_name => 'User', :foreign_key => 'user_id'

  has_many :reviews
  has_many :attractions, :class_name => 'TouristAttraction'
end

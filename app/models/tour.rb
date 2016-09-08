class Tour < ActiveRecord::Base
  belongs_to :city
  belongs_to :producer, :class_name => 'User', :foreign_key => 'user_id'
end

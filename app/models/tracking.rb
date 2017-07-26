class Tracking < ActiveRecord::Base
  belongs_to :carrier
  belongs_to :invoice
end

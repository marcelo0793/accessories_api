class Accessory < ActiveRecord::Base
  attr_accessible :description, :name, :origin, :price
end

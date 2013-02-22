class Albumn < ActiveRecord::Base
  attr_accessible :desc, :image, :name
  has_many :images
end

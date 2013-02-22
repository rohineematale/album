class Image < ActiveRecord::Base
  attr_accessible :image, :name
  belongs_to :albumn

  validates :image, :presence => true
  mount_uploader :image, PhotoUploader
end

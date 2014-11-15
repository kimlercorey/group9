class Item < ActiveRecord::Base

  mount_uploader :image, ItemImageUploader

  belongs_to :category
  # has_many :tags
  # has_many :symptoms

end

class Item < ActiveRecord::Base

acts_as_sellable

  mount_uploader :image, ItemImageUploader

  belongs_to :category
  has_many :tags
  has_many :symptoms

end

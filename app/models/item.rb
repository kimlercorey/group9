class Item < ActiveRecord::Base

acts_as_sellable

  mount_uploader :image, ItemImageUploader

  belongs_to :category
  has_and_belongs_to_many :tags
  has_and_belongs_to_many :symptoms

end

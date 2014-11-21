class Item < ActiveRecord::Base
acts_as_sellable

include PgSearch
pg_search_scope :search_main, :against => [:title, :details]

mount_uploader :image, ItemImageUploader

belongs_to :category
has_and_belongs_to_many :tags
has_and_belongs_to_many :symptoms

end

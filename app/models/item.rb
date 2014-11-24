class Item < ActiveRecord::Base

include PgSearch

acts_as_sellable


def user_params
      params.require(:item).permit(:piggybak_sellable_attributes)
end

multisearchable :against => [:title, :details]

mount_uploader :image, ItemImageUploader

belongs_to :category
has_and_belongs_to_many :tags
has_and_belongs_to_many :symptoms





end

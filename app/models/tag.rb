class Tag < ActiveRecord::Base
include PgSearch
  multisearchable :against => :title
  has_and_belongs_to_many :items

end

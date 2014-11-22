class Category < ActiveRecord::Base
include PgSearch
  multisearchable :against => :title
  
  has_many :items

  

end

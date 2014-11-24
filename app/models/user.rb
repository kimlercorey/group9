class User < ActiveRecord::Base

  acts_as_orderer
  
  #attr_accessible :piggybak_sellable_attributes

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  

end

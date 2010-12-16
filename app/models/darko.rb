class Darko < ActiveRecord::Base
  validates :status,  :presence => true, :length => { :maximum => 140 }
end

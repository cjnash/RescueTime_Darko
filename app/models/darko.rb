class Darko < ActiveRecord::Base
  validates :status,  :presence => true, :length => { :maximum => 140 }, :message => "Too long. Darko doesn't talk that long. Try again."
end

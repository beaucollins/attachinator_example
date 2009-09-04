class Album < ActiveRecord::Base
  has_many :photos
  
  accepts_nested_attributes_for :photos, :allow_destroy => true, :reject_if => proc { |attributes| attributes["file"].blank? }
  
end

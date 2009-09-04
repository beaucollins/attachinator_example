class Photo < ActiveRecord::Base
  belongs_to :album
  has_attached_file :photo, :style => { :medium => '300x300>', :thumb => '100x100>'}
end

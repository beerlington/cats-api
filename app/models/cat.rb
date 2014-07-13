class Cat < ActiveRecord::Base
  validates_presence_of :name, :cloudinary_public_id
end

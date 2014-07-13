class CatSerializer < ActiveModel::Serializer
  attributes :id, :name, :cloudinary_public_id
end

class MemeSerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :description
end

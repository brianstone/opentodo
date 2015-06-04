class ItemSerializer < ActiveModel::Serializer
  attributes :id, :description, :completed, :list_id, :created_at
end

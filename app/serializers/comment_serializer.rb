class CommentSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :contact_info, :project_id
  belongs_to :project
end

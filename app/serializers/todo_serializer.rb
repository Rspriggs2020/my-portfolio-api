class TodoSerializer < ActiveModel::Serializer
  attributes :id, :project_title, :completed, :goal_id
  belongs_to :goal
end

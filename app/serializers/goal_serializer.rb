class GoalSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :completed
  has_many :todos
end

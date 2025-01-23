class ScheduleSerializer
  include JSONAPI::Serializer
  attributes :title, :date

  belongs_to :user
  has_many :shows
end

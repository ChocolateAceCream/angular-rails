class Exercise
  include Mongoid::Document
  field :name, type: String
  field :duration, type: Float
  field :calories, type: Float
  field :date, type: Date
  field :state, type: String

  embedded_in :band
end

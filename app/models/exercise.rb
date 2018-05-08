class Exercise
    include Mongoid::Document
    field :name, type: String
    field :duration, type: Float
    field :calories, type: Float
    field :date, type: Date
    field :state, type: String

    embedded_in :user

    def self.new_exercise(name, duration, calories,date, state)
        exercise = Exercise.new(name: name, duration: duration, calories: calories, date: date, state: state)
        return exercise

    end

end

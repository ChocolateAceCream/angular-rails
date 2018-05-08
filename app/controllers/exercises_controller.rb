class ExercisesController < ApiController
    before_action :require_login, :current_user

    def index
        render json: @current_user.exercises
    end

    def create
        exercise = Exercise.new_exercise(
            params[:name],
            params[:duration],
            params[:calories],
            params[:date],
            params[:state]
        )
        if @current_user.exercises << exercise
            head :ok
        end
    end
end

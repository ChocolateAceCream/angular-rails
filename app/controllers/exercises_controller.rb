class ExercisesController < ApiController
    before_action :require_login, :current_user

    def index
        render json: @current_user.exercises
    end
end

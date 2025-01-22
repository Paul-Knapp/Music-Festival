class Api::V1::SchedulesController < ApplicationController

    def index
        if params[:user_id]
            user = User.find(params[:user_id])
            schedules = user.schedules
            render json: ScheduleSerializer.new(schedules)
        else
            schedules = Schedule.all
            render json: ScheduleSerializer.new(schedules)
        end

        def remove_show
            schedule = Schedule.find(params[:schedule_id])
            show = schedule.shows.find(params[:show_id])

            if schedule.shows.delete(show)
                render json: { message: "Show successfully removed from the schedule." }, status: :ok
              else
                render json: { error: "Failed to remove the show from the schedule." }, status: :unprocessable_entity
            end
        end
        
    end
end
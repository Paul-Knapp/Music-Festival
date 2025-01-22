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
            schedule = Schedule.find_by(id: params[:schedule_id])
            show = Show.find_by(id: params[:show_id])
        
            if schedule.nil? || show.nil?
              render json: { error: 'Schedule or Show not found.' }, status: :not_found
              return
            end
        
            if schedule.shows.include?(show)
              schedule.shows.delete(show)
              render json: { message: 'Show removed from schedule.' }, status: :ok
            else
              render json: { error: 'Show not part of schedule.' }, status: :unprocessable_entity
            end
        end
    end
end
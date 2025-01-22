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
    end
end
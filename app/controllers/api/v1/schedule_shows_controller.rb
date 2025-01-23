class Api::V1::ScheduleShowsController < ApplicationController
  def show
    schedule = Schedule.find_by(id: params[:schedule_id])

    if schedule.nil?
      render json: { error: "schedule not found"}, status: :not_found
      return
    end

    render json: ScheduleSerializer.new(schedule, include: [:user, :shows])
  end
end
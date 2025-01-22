require 'rails_helper'

RSpec.describe "Schedules API", type: :request do
  describe "DELETE /api/v1/schedules/:schedule_id/remove_show/:show_id" do
    let!(:schedule) { create(:schedule) }
    let!(:show) { create(:show) }

    before do
      schedule.shows << show
    end

    it "removes the show from the schedule" do
      delete "/api/v1/schedules/#{schedule.id}/remove_show/#{show.id}"
      
      expect(response).to have_http_status(:ok)
      expect(schedule.shows).not_to include(show)
    end

    it "returns an error if the show is not part of the schedule" do
      another_show = create(:show)
      delete "/api/v1/schedules/#{schedule.id}/remove_show/#{another_show.id}"

      expect(response).to have_http_status(:unprocessable_entity)
    end
  end
end

require 'rails_helper'

RSpec.describe Show, type: :model do
  describe "Relationships:" do
    it {should have_many (:schedule_shows) }
    it {should have_many (:schedules) }
  end

  describe "Validations:" do 
    it { should validate_presence_of(:artist) }
    it { should validate_presence_of(:location) }
    it { should validate_presence_of(:date) }
    it { should validate_presence_of(:time) }
  end
end

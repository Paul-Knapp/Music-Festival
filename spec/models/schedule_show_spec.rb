require 'rails_helper'

RSpec.describe ScheduleShow, type: :model do
  describe "Relationships:" do 
    it { should belong_to(:schedule) }
    it { should belong_to(:show) }
  end
end

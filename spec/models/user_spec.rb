require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Relationships" do 
    it { should have_many (:schedules)}
  end

  describe "Validations" do 
    it { should validate_presence_of(:first_name)}
    it { should validate_presence_of(:last_name)}
    it { should validate_presence_of(:email)}
  end
end

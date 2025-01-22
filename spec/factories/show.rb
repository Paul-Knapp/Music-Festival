FactoryBot.define do
  factory :show do
    artist { "Artist Name" }
    location { "Stage A" }
    date { Date.today }
    time { "18:00" }
  end
end
FactoryBot.define do
    factory :schedule do
      title { "My Festival Schedule" }
      date { Date.today }
      association :user
    end
  end
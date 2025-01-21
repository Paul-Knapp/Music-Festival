class User < ApplicationRecord
    has_many :schedules, dependent: :destroy
    validates :first_name. :last_name, :email, presence: true
end

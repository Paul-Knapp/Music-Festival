# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Seed Users
users = [
  User.create!(first_name: "Bob", last_name: "Jones", email: "bob.jones@example.com"),
  User.create!(first_name: "Alice", last_name: "Smith", email: "alice.smith@example.com"),
  User.create!(first_name: "Charlie", last_name: "Brown", email: "charlie.brown@example.com"),
  User.create!(first_name: "Dave", last_name: "Williams", email: "dave.williams@example.com"),
  User.create!(first_name: "Eva", last_name: "Davis", email: "eva.davis@example.com"),
  User.create!(first_name: "Frank", last_name: "Miller", email: "frank.miller@example.com"),
  User.create!(first_name: "Grace", last_name: "Wilson", email: "grace.wilson@example.com"),
  User.create!(first_name: "Hank", last_name: "Taylor", email: "hank.taylor@example.com"),
  User.create!(first_name: "Ivy", last_name: "Anderson", email: "ivy.anderson@example.com"),
  User.create!(first_name: "Jack", last_name: "Thomas", email: "jack.thomas@example.com")
]


shows = [
  Show.create!(artist: "Blues Explosion", location: "Blues Tent", date: "2025-07-15", time: 16),
  Show.create!(artist: "Jazz Masters", location: "Jazz Stage", date: "2025-07-16", time: 18),
  Show.create!(artist: "Rock Revolution", location: "Main Stage", date: "2025-07-17", time: 20),
  Show.create!(artist: "Pop Power", location: "Pop Stage", date: "2025-07-18", time: 15),
  Show.create!(artist: "Folk Fighters", location: "Folk Corner", date: "2025-07-19", time: 14),
  Show.create!(artist: "Country Kings", location: "Country Stage", date: "2025-07-20", time: 17),
  Show.create!(artist: "Indie Vibes", location: "Indie Room", date: "2025-07-21", time: 13),
  Show.create!(artist: "Classical Legends", location: "Symphony Hall", date: "2025-07-22", time: 19),
  Show.create!(artist: "Metal Mayhem", location: "Metal Pit", date: "2025-07-23", time: 22),
  Show.create!(artist: "Reggae Roots", location: "Reggae Tent", date: "2025-07-24", time: 12)
]


schedules = [
  Schedule.create!(title: "Bobs Blues Bash", date: "2025-07-15", user: users[0]),
  Schedule.create!(title: "Jazz Jam Session", date: "2025-07-16", user: users[1]),
  Schedule.create!(title: "Rock Fest", date: "2025-07-17", user: users[2]),
  Schedule.create!(title: "Pop Showcase", date: "2025-07-18", user: users[3]),
  Schedule.create!(title: "Folk Gathering", date: "2025-07-19", user: users[4]),
  Schedule.create!(title: "Country Extravaganza", date: "2025-07-20", user: users[5]),
  Schedule.create!(title: "Indie Music Day", date: "2025-07-21", user: users[6]),
  Schedule.create!(title: "Classical Night", date: "2025-07-22", user: users[7]),
  Schedule.create!(title: "Metal Showdown", date: "2025-07-23", user: users[8]),
  Schedule.create!(title: "Reggae Revival", date: "2025-07-24", user: users[9])
]


ScheduleShow.create!(schedule_id: schedules[0].id, show_id: shows[0].id)
ScheduleShow.create!(schedule_id: schedules[0].id, show_id: shows[1].id)
ScheduleShow.create!(schedule_id: schedules[0].id, show_id: shows[2].id)

ScheduleShow.create!(schedule_id: schedules[1].id, show_id: shows[3].id)
ScheduleShow.create!(schedule_id: schedules[1].id, show_id: shows[4].id)
ScheduleShow.create!(schedule_id: schedules[1].id, show_id: shows[5].id)

ScheduleShow.create!(schedule_id: schedules[2].id, show_id: shows[6].id)
ScheduleShow.create!(schedule_id: schedules[2].id, show_id: shows[7].id)
ScheduleShow.create!(schedule_id: schedules[2].id, show_id: shows[8].id)

ScheduleShow.create!(schedule_id: schedules[3].id, show_id: shows[9].id)
ScheduleShow.create!(schedule_id: schedules[3].id, show_id: shows[0].id)
ScheduleShow.create!(schedule_id: schedules[3].id, show_id: shows[1].id)

ScheduleShow.create!(schedule_id: schedules[4].id, show_id: shows[2].id)
ScheduleShow.create!(schedule_id: schedules[4].id, show_id: shows[3].id)
ScheduleShow.create!(schedule_id: schedules[4].id, show_id: shows[4].id)

ScheduleShow.create!(schedule_id: schedules[5].id, show_id: shows[5].id)
ScheduleShow.create!(schedule_id: schedules[5].id, show_id: shows[6].id)
ScheduleShow.create!(schedule_id: schedules[5].id, show_id: shows[7].id)

ScheduleShow.create!(schedule_id: schedules[6].id, show_id: shows[8].id)
ScheduleShow.create!(schedule_id: schedules[6].id, show_id: shows[9].id)
ScheduleShow.create!(schedule_id: schedules[6].id, show_id: shows[0].id)

ScheduleShow.create!(schedule_id: schedules[7].id, show_id: shows[1].id)
ScheduleShow.create!(schedule_id: schedules[7].id, show_id: shows[2].id)
ScheduleShow.create!(schedule_id: schedules[7].id, show_id: shows[3].id)

ScheduleShow.create!(schedule_id: schedules[8].id, show_id: shows[4].id)
ScheduleShow.create!(schedule_id: schedules[8].id, show_id: shows[5].id)
ScheduleShow.create!(schedule_id: schedules[8].id, show_id: shows[6].id)

ScheduleShow.create!(schedule_id: schedules[9].id, show_id: shows[7].id)
ScheduleShow.create!(schedule_id: schedules[9].id, show_id: shows[8].id)
ScheduleShow.create!(schedule_id: schedules[9].id, show_id: shows[9].id)

puts "Seed data created successfully!"
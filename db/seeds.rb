# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Seed Users
users = User.create([
  { first_name: 'Alice', last_name: 'Smith', email: 'alice.smith@example.com' },
  { first_name: 'Bob', last_name: 'Jones', email: 'bob.jones@example.com' },
  { first_name: 'Charlie', last_name: 'Taylor', email: 'charlie.taylor@example.com' },
  { first_name: 'Diana', last_name: 'Brown', email: 'diana.brown@example.com' }
])

# Seed Shows
shows = Show.create([
  { artist: 'The Jazz Cats', location: 'Main Stage', date: '2025-07-15', time: '14:00' },
  { artist: 'Blues Explosion', location: 'Blues Tent', date: '2025-07-15', time: '16:00' },
  { artist: 'Indie Wave', location: 'Green Stage', date: '2025-07-16', time: '13:00' },
  { artist: 'Rock Legends', location: 'Main Stage', date: '2025-07-16', time: '18:00' },
  { artist: 'Future Beats', location: 'Dance Tent', date: '2025-07-17', time: '20:00' },
  { artist: 'Acoustic Wonders', location: 'Acoustic Lounge', date: '2025-07-17', time: '12:00' }
])

# Seed Schedules
schedules = Schedule.create([
  { title: 'Alices Jazz Schedule', date: '2025-07-15', user_id: users[0].id },
  { title: 'Bobs Blues Bash', date: '2025-07-15', user_id: users[1].id },
  { title: 'Charlies Rock Adventure', date: '2025-07-16', user_id: users[2].id },
  { title: 'Dianas Dance Picks', date: '2025-07-17', user_id: users[3].id }
])

# Associate Shows with Schedules
ScheduleShow.create([
  { schedule_id: schedules[0].id, show_id: shows[0].id },
  { schedule_id: schedules[1].id, show_id: shows[1].id },
  { schedule_id: schedules[2].id, show_id: shows[3].id },
  { schedule_id: schedules[3].id, show_id: shows[4].id },
  { schedule_id: schedules[3].id, show_id: shows[5].id }
])
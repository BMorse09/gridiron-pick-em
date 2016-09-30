# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# %w(antony jeff matt jason).each do |name|
#   email = "#{name}@#{name}.com"
#   next if User.exists? email: email
#   User.create!(email: email,
#                password: 'abc123',
#                password_confirmation: nil)
# end


User.create([
  {email: "test@test.com", password: "123", password_confirmation: "123"},

  ])

Matchup.create([
  {home: "ne", away: "cin", week: 1},

  ])

Prediction.create([
  {user_id: 1, matchup_id: 1, pick: "ne"}
  ])

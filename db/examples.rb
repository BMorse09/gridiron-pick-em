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
  { email: 'test@test.com', password: '123', password_confirmation: '123' }
            ])

Matchup.create([
  { home: 'IND', away: 'JAX', week: 4, outcome: 'away' },
  { home: 'NE', away: 'BUF', week: 4, outcome: 'away' },
  { home: 'HOU', away: 'TEN', week: 4, outcome: 'home' },
  { home: 'CHI', away: 'DET', week: 4, outcome: 'away' },
  { home: 'ATL', away: 'CAR', week: 4, outcome: 'home' },
  { home: 'NYJ', away: 'SEA', week: 4, outcome: 'away' },
  { home: 'BAL', away: 'OAK', week: 4, outcome: 'away' },
  { home: 'WSH', away: 'CLE', week: 4, outcome: 'home' },
  { home: 'TB', away: 'DEN', week: 4, outcome: 'away' },
  { home: 'ARI', away: 'LA', week: 4, outcome: 'away' },
  { home: 'SF', away: 'DAL', week: 4, outcome: 'away' },
  { home: 'SD', away: 'NO', week: 4, outcome: 'away' },
  { home: 'PIT', away: 'KC', week: 4, outcome: 'home' },
  { home: 'MIN', away: 'NYG', week: 4, outcome: 'home' }
               ])

Predictions.create([
  { user_id: 1, matchup_id: 1, pick: 'home' },
  { user_id: 1, matchup_id: 2, pick: 'away' },
  { user_id: 1, matchup_id: 3, pick: 'away' },
  { user_id: 1, matchup_id: 4, pick: 'home' },
  { user_id: 1, matchup_id: 5, pick: 'away' },
  { user_id: 1, matchup_id: 6, pick: 'home' },
  { user_id: 1, matchup_id: 7, pick: 'away' },
  { user_id: 1, matchup_id: 8, pick: 'home' },
  { user_id: 1, matchup_id: 9, pick: 'home' },
  { user_id: 1, matchup_id: 10, pick: 'away' },
  { user_id: 1, matchup_id: 11, pick: 'home' },
  { user_id: 1, matchup_id: 12, pick: 'away' },
  { user_id: 1, matchup_id: 13, pick: 'home' },
  { user_id: 1, matchup_id: 14, pick: 'home' }
                   ])

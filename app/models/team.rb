class Team < ActiveRecord::Base
	has_many :first_team,    class_name:  "Fixture", foreign_key: "team1"
    has_many :secod_team,    class_name:  "Fixture", foreign_key: "team2"
end

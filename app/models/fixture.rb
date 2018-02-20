class Fixture < ActiveRecord::Base
  belongs_to :local,    class_name: "Team", foreign_key: "team1"
  belongs_to :visitor,  class_name: "Team", foreign_key: "team2"
end

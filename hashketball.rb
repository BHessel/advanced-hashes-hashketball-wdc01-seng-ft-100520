# Write your code below game_hash
require 'pry'
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def player_list
  game_hash[:home][:players]+game_hash[:away][:players]
end


def num_points_scored(player_input)
  player_list.each do |players|
    if players[:player_name] == player_input
    return players[:points]
    end
  end
end

def shoe_size(player_input)
  player_list.each do |players|
    if players[:player_name] == player_input
    return players[:shoe]
    end
  end
end

def team_colors(team_name)
  game_hash.each do |location, team_info|
    if team_info[:team_name] == team_name
    return team_info[:colors] 
    end
  end
end

def team_names
  game_hash.map do |location, team_info|
    team_info[:team_name]
  end
end

def team_identifier(team)
  if game_hash[:home][:team_name] == team 
    game_hash[:home]
  elsif team == game_hash[:away][:team_name]
    game_hash[:away]
    #binding.pry
  end
end

def player_numbers(team)
  team_identifier(team)[:players].map do |stat_category|
    stat_category[:number]
  end
end
  
def player_stats(player_name)
  player_list.map do |stat_category|
    if stat_category[:player_name] == player_name
    return stat_category
    end
  end
end

def player_with_largest_shoes
  player_list.max_by do |shoe_size|
    shoe_size[:shoe]
    shoe_size[:shoe][:name]
  end
  binding.pry
end
#binding.pry

=begin
students = [ { name: "Mary Jones", test_score: 80, sport: "soccer" }, { name: "Bob Kelly", test_score: 95, sport: "basketball" }, { name: "Kate Saunders", test_score: 99, sport: "hockey" }, { name: "Pete Dunst", test_score: 88, sport: "football" } ]

students.max_by{|k| k[:test_score] }
#=> {:name=>"Kate Saunders", :test_score=>99, :sport=>"hockey"}

students.max_by{|k| k[:test_score] }[:name]

=end



def big_shoe_rebounds
  
  #find player w/ largest shoe size -- player_list[:shoe].max? do i need to iterate first?
  #if (player input) == (player w/ largest shoe)
  #return (player)(rebounds)
end

#binding.pry
# Write code here
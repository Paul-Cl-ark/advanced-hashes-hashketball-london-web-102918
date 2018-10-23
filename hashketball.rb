require 'pry'

def game_hash
  hash = {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: {
        
        alan_anderson: {
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
          
         reggie_evans: {
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
          
         brook_lopez: {
          player_name: "Brook Lopez", 
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15},
          
        mason_plumlee: {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
          
        jason_terry: {
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
      }
    },
  
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: {
        
        jeff_adrien: {
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
          
        bismak_biyombo: {
          player_name: "Bismak Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        },
          
        desagna_diop: {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5},
          
        ben_gordon: {
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
          
        brendan_haywood: {
          player_name: "Brendan Haywood",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      }
    }
  }
end

def num_points_scored(player_name)
  points_scored = ""
  game_hash.each do |location, team_data|
    game_hash[location][:players].each do |player, player_data| 
      if player_name == player_data[:player_name]
        points_scored = player_data[:points]
      end
    end
  end
  points_scored
end

def shoe_size(player_name)
  shoe_size = ""
  game_hash.each do |location, team_data|
    game_hash[location][:players].each do |player, player_data| 
      if player_name == player_data[:player_name]
        shoe_size = player_data[:shoe]
      end
    end
  end
  shoe_size
end

def team_colors(team_name)
  game_hash.map do |location, team_data|
    if team_data[:team_name] == team_name
      team_data[:colors]
      binding.pry
    end
  end
  points_scored
end

def shoe_size(player_name)
  shoe_size = ""
  game_hash.each do |location, team_data|
    game_hash[location][:players].each do |player, player_data| 
      if player_name == player_data[:player_name]
        shoe_size = player_data[:shoe]
      end
    end
  end
  shoe_size
end

def team_colors(team_name)
  game_hash.map do |location, team_stats|
    if team_stats[:team_name] == team_name
      return team_stats[:colors]
    end
  end
end

def team_names
  team_names = []
  game_hash.map do |location, team_stats|
        team_names << team_stats[:team_name] 
  end
  team_names
end

def player_numbers(team_name)
  player_numbers = []
  game_hash.each do |location, team_stats|
    if team_name == team_stats[:team_name]
      team_stats[:players].each do |player, player_stats|
        player_numbers.push(player_stats[:number])
      end
    end
  end
  player_numbers
end

def player_stats(player_name)
  player_stats = ""
  game_hash.each do |location, team_data|
    team_data[:players].each do |player, player_data|
      if player_name == player_data[:player_name]
        player_stats = player_data
        player_stats.delete(:player_name)
      end
    end
  end
  player_stats
end

def big_shoe_rebounds
  biggest_shoe = 0
  rebounds = 0
  
  game_hash.each do |location, team_data|
    team_data[:players].each do |player, player_data|
      if player_data[:shoe] > biggest_shoe 
				biggest_shoe = player_data[:shoe]
			end
	
	    if player_data[:shoe] == biggest_shoe
	      rebounds = player_data[:rebounds]
      end
    end
  end
  rebounds
end
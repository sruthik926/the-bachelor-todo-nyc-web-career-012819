require 'pry'

def get_first_name_of_season_winner(data, season)
    data[season].each do |info_hash|
         if info_hash["status"] == "Winner"
            return info_hash["name"].split(" ")[0]
         end
    end
end

def get_contestant_name(data, occupation)
  data.each do |season, season_data|
      season_data.each do |contestant_hash|
          contestant_hash.each do |con_key, con_value|
            if con_value == occupation
              return contestant_hash["name"]
            end
          end
      end
  end
end
  

def count_contestants_by_hometown(data, hometown)
  total_contestant = 0
  
 
  
  
end

def get_occupation(data, hometown)
  data.each do |season, season_data|
      season_data.each do |contestant_hash|
          contestant_hash.each do |con_key, con_value|
            if con_value == hometown
              return contestant_hash["occupation"]
            end
          end
      end
  end
end

def get_average_age_for_season(data, season)
      sum_age = 0
      total_conte = 0
      data[season].each do |info_hash|
         sum_age += info_hash["age"].to_i
         total_conte += 1
          #binding.pry
      end
      sum_age.to_f/total_conte.round
end

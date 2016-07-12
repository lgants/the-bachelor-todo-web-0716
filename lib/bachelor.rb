def get_first_name_of_season_winner(data, season)
  # code here
  data.each do |season_number, contestant|
    if season_number == season
      contestant.each do |attribute|
        if attribute["status"]=="Winner"
          return attribute["name"].split(" ")[0]
        end 
      end 
    end 
  end 
end


def get_contestant_name(data, occupation)
  data.each do |season_number, contestant|
    contestant.each do |attribute|
      if attribute["occupation"] == occupation
        return attribute["name"]
      end 
    end 
  end 
end


def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season_number, contestant|
    contestant.each do |attribute|
      if attribute["hometown"] == hometown
        count += 1
      end 
    end 
  end 
  count 
end


def get_occupation(data, hometown)
  data.each do |season_number, contestant|
    contestant.each do |attribute|
      if attribute["hometown"] == hometown
        return attribute["occupation"]
      end 
    end 
  end
end


def get_average_age_for_season(data, season)
  sum = 0
  count = 0
  data.each do |season_number, contestant|
    if season_number == season
      contestant.each do |attribute|
        count += 1
        sum += attribute["age"].to_i 
      end 
    end 
  end
  average = sum.to_f / count.to_f
  average.round
end

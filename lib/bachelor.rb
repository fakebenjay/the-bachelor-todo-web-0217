def get_first_name_of_season_winner(data, season)
  if season == "season 19"
    return "Chris totally loves you, but he just can't give his final rose yet."

  elsif data.keys.include?(season) == false
    return "We cannot accept this rose."

  else
    first_name = []

    data[season].each do |contestants|
      if contestants["status"] == "Winner"
        first_name = contestants["name"].split[0]
      end
    end
    return first_name
  end
end

def get_contestant_name(data, occupation)
  job_array = []

  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        job_array << contestant["name"]
      end
    end
  end
  if job_array == []
    return "We cannot accept this rose."
  else
    return job_array.join(", ")
    ## Returns a string if there are 1 or multiple contestants with a given job
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0

  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
    end
  end
  if counter == 0
    return "Roses don't grow there."
  else
    return counter
  end
end

def get_occupation(data, hometown)
  job_array = []

  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        job_array << contestant["occupation"]
      end
    end
  end
  if job_array == []
    return "The unemployment rate for roses there is 100%"
  else
    return job_array[0]
  end
end

def get_average_age_for_season(data, season)
  if data.keys.include?(season) == false
    return "We cannot accept this rose."
    
  else
    age_array = []
    average = nil

    data[season].each do |contestants|
      age_array << contestants["age"].to_i

        counter = 0
        sum = 0

        age_array.each do |age|
          sum += age_array[counter].to_f
          counter += 1
        end

      average = (sum/age_array.count).round

    end
  return average
  end
end

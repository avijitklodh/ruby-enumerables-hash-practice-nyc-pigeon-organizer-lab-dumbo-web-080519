def nyc_pigeon_organizer(hash)
  # write your code here!
 final = {}

  hash.each do |first_level, all_other|
    all_other.each do |category, array|
      array.each do |name|
        final[name] = {:color => [], :gender => [], :lives => []}
      end 
    end 
  end 
  
  x = final.keys
  hash[:color].each do |bird_color, name|
    name.each do |bird_name|
      x.each do |item|
        if bird_name === item
          final[item][:color] << bird_color.to_s
        end 
      end 
    end 
  end 
 
  hash[:gender].each do |gender, type|
    type.each do |bird_name|
      x.each do |item|
        if bird_name === item
          final[item][:gender] << gender.to_s
        end 
      end 
    end 
  end 

  hash.each do |location, name|
    name.each do |bird_name|
      x.each do |item|
        if bird_name === item
          final[item][:lives] << location
        end 
      end 
    end 
  end 
  
  return final 
end 

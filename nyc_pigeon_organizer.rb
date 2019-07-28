def nyc_pigeon_organizer (data)
  organized_pigeon = {}

  data.each do |key, value|
    value.each do |key_2, array|
      array.each do |names|
        organized_pigeon[names] = {:color => [], :gender => [], :lives => []}
      end 
    end 
  end 
  x = organized_pigeon.keys
  data[:color].each do |color, color_name|
    color_name.each do |bird_name|
      x.each do |item|
        if bird_name === item
          organized_pigeon[item][:color] << color.to_s
        end 
      end 
    end 
  end 
  data[:gender].each do |gender, sex|
    sex.each do |bird_name|
      x.each do |item|
        if bird_name === item
          organized_pigeon[item][:gender] << gender.to_s
        end 
      end 
    end 
  end 
  data[:lives].each do |place, name|
    name.each do |bird_name|
      x.each do |item|
        if bird_name === item
          organized_pigeon[item][:lives] << place
        end 
      end 
    end 
  end 
  
  return organized_pigeon 
end
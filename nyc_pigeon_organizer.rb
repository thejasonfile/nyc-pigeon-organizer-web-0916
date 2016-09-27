def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |attr, detail|
    detail.each do |type, name_array|
      name_array.each do |name|
        pigeon_list[name] = {}
      end
    end
  end

  pigeon_list.each do |name, info|
    data.each do |attr, detail|
      arr = []
      detail.each do |type, name_array|
        if name_array.include?(name)
          arr.push(type.to_s)
        end
        pigeon_list[name][attr] = arr
      end
    end
  end
  pigeon_list
end

require 'pry'
def begins_with_r(array)
  array.all? do |string|
    string.start_with?("r")
  end
end

def contain_a(array)
  array.select do |string|
    string.include?("a")
  end
end

def first_wa(array)
  array.find do |string|
    string.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.delete_if{|string|
    string.class != String}
end

def count_elements(array)
  array.uniq.each do |name|
    name[:count] = array.count(name)
  end
end

def merge_data(keys, data)
  keys.map do |key|
    key.merge(data[0][key[:first_name]].to_h)
  end
end

def find_cool(cool)
  cool.select {|hash|
    hash[:temperature] == "cool"
  }
end

def organize_schools(schools)
  new_hash = {}
  schools.each do |school,location_hash|
    if new_hash[location_hash[:location]] == nil
      new_hash[location_hash[:location]] = [school]
    else
      new_hash[location_hash[:location]] << school
    end
  end
  new_hash
end

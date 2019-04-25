# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  values = []
  name_hash.each do |name, value|
    values << value
  end
  values.sort! {|a,b| a<=>b}
  min_value = values[0]
  name_hash.collect do |name,value|
    if value == min_value
      return name
    end
  end

end

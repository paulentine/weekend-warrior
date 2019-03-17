def words(string)
  # Default value for keys: 0
  words_with_count = Hash.new(0)
  string.split(" ").each do |word|
    words_with_count[word] += 1
  end
  return words_with_count
end
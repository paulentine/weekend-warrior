def words(string)
  # Default value for key: 0
  words_with_count = Hash.new(0)
  words = string.split(" ")
  words.each do |word|
    words_with_count[word] += 1
  end
  return words_with_count
end
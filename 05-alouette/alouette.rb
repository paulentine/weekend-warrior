class Alouette
  NUM_OF_VERSES = 8
  def self.lines_for_verse(verse_num)
    verse = []
    while verse_num >= 0
      case verse_num
        when 0
        changing_verse = "la tête"
        when 1
        changing_verse = "le bec"
        when 2
        changing_verse = "les yeux"
        when 3
        changing_verse = "le cou"
        when 4
        changing_verse = "les ailes"
        when 5
        changing_verse = "les pattes"
        when 6
        changing_verse = "la queue"
        when 7
        changing_verse = "le dos"
      end
      verse << "Et #{changing_verse}!"
      verse_num -= 1
    end
    return verse
  end

  def self.verse(verse_num)
    verse = ""

    line_one = lines_for_verse(verse_num)[0]
    line_one.slice! "!"
    line_one << "."
    2.times do
      verse << "Je te plumerai #{line_one[3, (line_one.length - 1)]}\n"
    end
    
    i = 0
    while i <= verse_num
      2.times do
        verse << "#{lines_for_verse(verse_num)[i]}\n"
      end
      i += 1
    end

    2.times do
      verse << "Alouette!\n"
    end
    verse << "A-a-a-ah"

    return verse
  end

  def self.sing
    lyrics = ""
    refrain = "Alouette, gentille alouette,\nAlouette, je te plumerai."
    i = 0
    while i < NUM_OF_VERSES
      lyrics << "#{refrain}\n\n"
      lyrics += "#{verse(i)}\n\n"
      i += 1
    end
    lyrics += refrain
    return lyrics
  end
end
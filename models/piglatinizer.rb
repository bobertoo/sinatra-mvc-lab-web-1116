class PigLatinizer

  def piglatinize(word)
    if word.downcase.start_with?('a', 'e', 'i', 'o', 'u', 'y')
      "#{word}way"
    else
      until word.start_with?('a', 'e', 'i', 'o', 'u', 'y')
        word = word[1..-1] + word[0]
      end
      "#{word}ay"
    end
  end

  def to_pig_latin(phrase)
    pig = phrase.split.map do |word|
      piglatinize(word)
    end
    pig.join(" ")
  end
end

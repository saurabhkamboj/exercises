class BeerSong
  def self.verse(bottle1, bottle2 = nil)
    bottles = bottle2 ? (bottle2..bottle1).to_a.reverse : [bottle1]
    bottles.map { line1(_1) + line2(_1 - 1) }.join("\n")
  end

  def self.verses(start, stop)
    verse(start, stop)
  end

  def self.lyrics
    verses(99, 0)
  end

  class << self
    private

    def bottle_substring(number)
      case number
      when 2..99 then "#{number} bottles"
      when 1 then '1 bottle'
      else 'no more bottles'
      end
    end

    def line1(number)
      input = bottle_substring(number)
      "#{input.capitalize} of beer on the wall, " \
        "#{input} of beer.\n"
    end

    def line2(number)
      return "Go to the store and buy some more, " \
        "99 bottles of beer on the wall.\n" if number < 0

      input1 = number.zero? ? 'Take it' : 'Take one'
      input2 = bottle_substring(number)
      "#{input1} down and pass it around, " \
        "#{input2} of beer on the wall.\n"
    end
  end
end

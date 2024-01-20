class Robot
  ALPHABETS = ('A'..'Z').to_a
  @@names = []

  def name
    return @name unless @name.nil?
    while @@names.include?(@name) || @name.nil?
      @name = generate_name
    end

    (@@names.push(@name)).last
  end

  def reset
    @@names.delete(@name)
    @name = nil
  end

  private

  def generate_name
    ALPHABETS[rand(0...26)] +
      ALPHABETS[rand(0...26)] +
      rand(100..999).to_s
  end
end

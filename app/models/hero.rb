class Hero

  attr_reader :name, :power, :biography
  @@all = []

  def initialize(name, power, biography)
    @name =  name
    @power = power
    @biography = biography
    @@all << self
  end

end
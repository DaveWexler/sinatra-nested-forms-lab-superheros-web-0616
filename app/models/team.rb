class Team

  @@all = []
  attr_reader :name, :motto

  def initialize(name, motto)
    @name = name
    @motto = motto
    @@all << self
    @heroes = []
  end
end
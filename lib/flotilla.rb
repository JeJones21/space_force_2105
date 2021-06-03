class Flotilla
  attr_reader :name,
              :personnel,
              :ships

  def initialize(info)
    @name = info[:designation]
    @personnel = []
    @ships = []
  end

  def add_ship(ship)
    @ships << ship
  end

  def add_personnel(personnel)
    @personnel << personnel
  end

  def recommend_personnel(personnel)
    @personnel << personnel

  end
end

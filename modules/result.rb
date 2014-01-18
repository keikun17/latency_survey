class ::Result

  def self.shout
    'hey'
  end

  def initialize(serialized_object = {})
    @area = serialized_object.keys.first

    @game_latencies = serialized_object[@area]
    @games = serialized_object[@area].keys

  end

  def area
    @area
  end

  def games
    @games
  end

  def game_latencies
    @game_latencies
  end
end


class ::SurveyResult

  def self.cached_data(data)
    @cached_data ||= data.locations.collect do |k,v|
      hash = {"#{k}" => v}
      SurveyResult.new(hash)
    end
  end

  # Accepts
  def initialize(serial = {})
    @area = serial.keys.first
    @games = serial[@area].keys

    @game_latencies = serial[@area]
    @area = serial.keys.first
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


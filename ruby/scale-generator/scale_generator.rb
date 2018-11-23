class Scale
  attr_accessor :name

  ASCENDING_INTERVALS =  %w(m M A)
  CHROMATIC_SCALE =      %w(C C# D D# E F F# G G# A A# B)
  FLAT_CHROMATIC_SCALE = %w(C Db D Eb E F Gb G Ab A Bb B)
  FLAT_KEYS =            %w(F Bb Eb Ab Db Gb d g c f bb eb)

  def initialize(tonic, scale_name, pattern = nil)
    @tonic = tonic.capitalize
    @scale_name = scale_name
    @pattern = pattern
    @name = "#{@tonic} #{scale_name}"
  end

  def pitches
    return CHROMATIC_SCALE if @tonic == 'C'
    FLAT_CHROMATIC_SCALE.rotate(FLAT_CHROMATIC_SCALE.find_index(@tonic))

  end

end

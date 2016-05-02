class Movie

  def initialize

    puts Rainbow('Movie was instantiated').cyan
    @props = HTTPArty.get('http://www.omdbapi.com/?t=solarbabies&y=&plot=short&r=json')
    puts Rainbow(@props).green
  end

  def to_hash
    @props.to_hash
  end


end

class RPS

  def initialize()
    @scores = {'player1' => 0,
    'player2' => 0
  }
  end

def wins?(p1,p2)
  if p1=='rock'
    if p2 == 'scissors'
      @scores['player1'] += 1
      return true
    elsif p2 == 'rock'
      return false
    elsif p2 == 'paper'
      @scores['player2'] += 1
      return false
    end
  end

  if p1=='scissors'
    if p2 == 'paper'
      @scores['player1'] += 1
      return true
    elsif p2 == 'scissors'
      return false
    elsif p2 == 'rock'
      @scores['player2'] += 1
      return false
    end
  end

  if p1=='paper'
    if p2 == 'rock'
      @scores['player1'] += 1
      return true
    elsif p2 == 'paper'
      return false
    elsif p2 == 'scissors'
      @scores['player2'] += 1
      return false
    end
  end

end

  def get_score(who)
    @scores.fetch(who)
  end

  def set_score(who,to)
    @scores[who]=to
  end

end

game= RPS.new()

game.wins?('rock','scissors')
game.wins?('rock','scissors')
game.wins?('rock','scissors')
game.wins?('rock','scissors')
game.wins?('rock','scissors')
game.wins?('rock','scissors')

game.wins?('scissors','rock')

puts game.get_score('player1')
puts game.get_score('player2')

class Team
  attr_accessor :name, :win, :lose, :draw

  def initialize(name, win, lose, draw)
    self.name = name
    self.win = win
    self.lose = lose
    self.draw = draw
  end 

  def calc_win_rate
    calc_win_rate = self.win.to_f / (self.win + self.lose)
  
    puts "#{self.name}の2020年の成績は#{self.win}勝#{self.lose}敗#{self.draw}分、勝率は#{calc_win_rate}です."
  end
end

# チームのインスタンスを生成
Giants = Team.new('Giants', 67, 45, 8)
Tigers = Team.new('Tigers', 60, 53, 7)
Dragons = Team.new('Dragons', 60, 55, 5)
Baystars = Team.new('Baystars', 56, 58, 6)
Carp = Team.new('Carp', 52, 56, 12)
Swallows = Team.new('Swallows', 41, 69, 10)

# 勝率を計算して出力
Giants.calc_win_rate
Tigers.calc_win_rate
Dragons.calc_win_rate
Baystars.calc_win_rate
Carp.calc_win_rate
Swallows.calc_win_rate


 

  
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
    calc_win_rate.round(3)  # 勝率を小数点以下3桁まで表示
  end

  def show_team_result
    win_rate = calc_win_rate
    puts "#{self.name}の2020年の成績は#{self.win}勝#{self.lose}敗#{self.draw}分、勝率は #{win_rate} です。"
  end
end

# 6 チーム分のインスタンスを生成
giants = Team.new('Giants', 67, 45, 8)
tigers = Team.new('Tigers', 60, 53, 7)
dragons = Team.new('Dragons', 60, 55, 5)
baystars = Team.new('BayStars', 56, 58, 6)
carp = Team.new('Carp', 52, 56, 12)
swallows = Team.new('Swallows', 41, 69, 10)

# 各チームの成績を表示
giants.show_team_result
tigers.show_team_result
dragons.show_team_result
baystars.show_team_result
carp.show_team_result
swallows.show_team_result

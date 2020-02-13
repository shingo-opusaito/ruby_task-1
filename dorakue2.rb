# frozen_string_literal: true

class Brave
  attr_reader :name, :hp, :offense, :defense
  attr_accessor :hp
  def initialize(**params) # **を記述することでハッシュしか受け取れなくなる。ハッシュ以外で渡すとエラーになるため予期せぬバグを防げる。
    @name = params[:name]
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]
  end
  brave = Brave.new(name: 'テリー', hp: 500, offense: 150, defense: 100)
  puts <<~TEXT
    NAME:#{brave.name}
     HP:#{brave.hp}
     OFFENSE:#{brave.offense}
     DEFENSE#{brave.defense}
  TEXT

  # ダメージに関するメッセージ
  brave.hp -= 30
  puts "#{brave.name}はダメージを受けた！残りhpは#{brave.hp}だ"
end

class Monster
  attr_reader:name, :offense, :defense
  attr_accessor :hp
  def initialize(**params)
    @name = params[:name]
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]
  end
  monster = Monster.new(name: 'スライム', hp: 250, offense: 200, defense: 100)
end

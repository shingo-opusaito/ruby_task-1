# frozen_string_literal: true

class Brave
  # 値を柔軟に変えられるように引数を与える
  # def initialize(name:, hp:, offense:, defense:)
  #     @name =name
  #     @hp = hp
  #     @offense = offense
  #     @defense = defense
  attr_reader :name, :hp, :offense, :defense
  # セッターゲッターを一括定義
  attr_accessor :hp
  # attr_reader :name
  # attr_reader :hp
  # attr_reader :offense
  # attr_reader :defense
  # #
  # 今のままではnew演算子で渡す引数の数が増えるとinitializeメソッドの引数も増やす必要があり、変更箇所が多くなってしま
  # 下記のようにinitializeのメソッドの引数をハッシュとして値を受け取れるようにすることでnew演算しで渡す引数が増えても変更箇所が少なくて済む。
  def initialize(**params) # **を記述することでハッシュしか受け取れなくなる。ハッシュ以外で渡すとエラーになるため予期せぬバグを防げる。
    @name = params[:name]
    @hp = params[:hp]
    @offense = params[:offense]
    @defense = params[:defense]
  end

  # #nameのセッター セッターは=の間を空けるとエラーになる
  # initializeを使用したのでここのセッターが不要になる。
  # def name=(name)
  #     @name= name
  # end

  # nameのゲッター
  #   def name
  # @name
  #   end

  # #hpのセッター
  # def hp=(hp )
  #     @hp = hp
  # end
  # hpのゲッター
  # def hp
  # @hp
  # end

  # #offenseのセッター
  # def offense=(offense)
  #     @offense = offense
  # end
  # offenseのゲッター
  #   def offense
  # @offense
  #   end

  # #defensのセッター
  # def defense=(defense)
  #     @defense = defense
  # end
  # deffenseのゲッター
  #  def defense
  # @defense
  # end
  # 勇者クラスをインスタンス化
  # 引数を与えることで柔軟に数値を変えることができるが引数を見ただけではどのパラメーターに渡しているのかわかりづらいため、キーワード引数を使用していく。
  brave = Brave.new(name: 'テリー', hp: 500, offense: 150, defense: 100)

  # パラメータ値を設定 initializeを使用するとここも不要になる。
  # brave.name = "テリー"
  # brave.hp = 500
  # brave.offense = 150
  # brave.defense = 100

  # 値を取り出す
  # puts brave.name
  # puts brave.hp
  # puts brave.offense
  # puts brave.defense
  # 味気がないので下記のように変更してみる
  # puts "NAME:#{brave.name}"
  # puts "HP:#{brave.hp}"
  # puts "OFFENSE:#{brave.offense}"
  # puts "DEFENSE#{brave.defense}"
  # ヒアドキュメントを使用すると楽""も同時に出力されるので削除しておく
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

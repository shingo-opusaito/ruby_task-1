# 課題の回答は このファイル をご利用下さい。
# 回答の出力を確認される際は，「ruby main.rb」をターミナルから実行して下さい。

def q1
  names = ["田中", "佐藤", "佐々木", "高橋"]

  # 以下に回答を記載
 names.<<("斎藤")
 puts names
 # pushは配列への挿入の場合ほぼ使われていない。
end

def q2
  array1 = %w(dog cat fish)
  array2 = %w(bird bat tiger)
  array3 = array1+array2
p array3
  # 以下に回答を記載

end

def q3
  numbers = [1, 5, 8, 10, 2, 3, 2, 3, 3, 1, 4, 5, 9]
  # 以下に回答を記載
 p numbers.count(3)
# count...カウントはそのまま数える。この場合だと3を数える。

end

def q4
  sports = ["サッカー", "フットサル", nil, "野球", "バスケ", nil, "バレー"]

  p sports.compact!
  # 破壊的メソッドはもとの配列にも影響を及ぼす。つまり元の配列も変更を
  # くらっているということ。
  # 以下に回答を記載
end

def q5
  array1 = []
  array2 = [1, 5, 8, 10]

  # 以下に回答を記載
p  array1.empty?
p array2.empty?


end

def q6
  numbers1 = [1, 2, 3, 4, 5]

  # 以下に回答を記載
# map は　map{　|　変数名　|　処理}とする
# 例は下記の通り変数n を乗算10とする。
# そしてnew_numbersへ代入されているためnew_numbersをputsすれば表示できる。

  new_numbers = numbers1.map { |n|n*10  }
  puts new_numbers

end

def q7
  array = ["1", "2", "3", "4", "5"]

  # 以下に回答を記載
p array.map!(&:to_i)
# 文字列を数値へ変換するときはto_iメソッドが使用できる。
# ちょっとよくわからんからここは深掘りして理解する。
end

def q8
  programming_languages = %w(ruby php python javascript)

  # 以下に回答を記載


  p programming_languages.map!(&:capitalize)
  p upper_case_programming_languages = programming_languages.map!(&:upcase)

# すべて大文字に変換するには、upcase 。
# 逆にすべて小文字に変換するには　downcase
# 大文字と小文字の反転を行う場合にはswapcase
# 先頭だけ大文字に変換する場合には、capitalize。
# 特定の文字だけを変換したい場合、tr。
end

def q9
  names = ["田中", "佐藤", "佐々木", "高橋"]

  # 以下に回答を記載

end

def q10
  foods = %w(いか たこ うに しゃけ うにぎり うに軍艦 うに丼)

  # 以下に回答を記載

end

def q11
  sports = ["サッカー", "バスケ", "野球", ["フットサル", "野球"], "水泳", "ハンドボール", ["卓球", "サッカー", "ボルダリング"]]

  # 以下に回答を記載

end

def q12
  data = { user: { name: "satou", age: 33 } }

  # 以下に回答を記載

end

def q13
  user_data = { name: "神里", age: 31, address: "埼玉" }
  update_data = { age: 32, address: "沖縄" }

  # 以下に回答を記載

end

def q14
  data = { name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com" }

  # 以下に回答を記載

end

def q15
  data1 = { name: "saitou", hobby: "soccer", age: 33, role: "admin" }
  data2 = { name: "yamada", hobby: "baseball", role: "normal" }

  # 以下に回答を記載

end

def q16
  users = [
    { name: "satou", age: 22 },
    { name: "yamada", age: 12 },
    { name: "takahashi", age: 32 },
    { name: "nakamura", age: 41 }
  ]

  # 以下に回答を記載

end

class UserQ17
  # 以下に回答を記載

end

def q17
  # ここは変更しないで下さい（ユーザー情報は変更していただいてOKです）
  user1 = UserQ17.new(name: "神里", age: 32, gender: "男", admin: true)
  user2 = UserQ17.new(name: "あじー", age: 32, gender: "男", admin: false)

  user1.info
  puts "-------------"
  user2.info
end

class UserQ18
  # 以下に回答を記載

end

def q18
  # ここは変更しないで下さい
  user1 = UserQ18.new(name: "あじー", age: 32)
  user2 = UserQ18.new(name: "ゆたぼん", age: 10)

  puts user1.introduce
  puts user2.introduce
end

class Item
  # 以下を修正して下さい

  def initialize(name)
    @name = name
  end
end

def q19
  # ここは変更しないで下さい
  book = Item.new(name: "ゼロ秒思考")
  puts book.name
end

class UserQ20
  # 以下に回答を記載

end

class Zoo
  # 以下に回答を記載

end


def q20
  # ここは変更しないで下さい（動物園・ユーザー情報は変更していただいてOKです）
  zoo = Zoo.new(name: "旭山動物園", entry_fee: { infant: 0, children: 400, adult: 800, senior: 500 })

  users = [
    UserQ20.new(name: "たま", age: 3),
    UserQ20.new(name: "ゆたぼん", age: 10),
    UserQ20.new(name: "あじー", age: 32),
    UserQ20.new(name: "ぎん", age: 108)
  ]

  users.each do |user|
    zoo.info_entry_fee(user)
  end
end

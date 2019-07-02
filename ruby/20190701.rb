#
# 20190701.rbを作成する
# 以下の理解度を確認する問題です
#   ・前回までのおさらい
#   ・比較演算子
#   ・条件分岐
#   ・繰り返し
#

# 問1
# 以下のように記述することで「0〜999」までのランダムな数字(乱数)を生成することができます
# sample_random_number = rand(0..999)
# 変数「random_number_01」を宣言し「0〜999」までの乱数を代入してください
# random_number_01が「0」の場合は "Zero number"
# random_number_01が「偶数」の場合は "Even number"
# random_number_01が「奇数」の場合は "Odd number"
# と出力するプログラムを記述してください


random_number_01 = rand(0..999)

if random_number_01 == 0
	p "#{random_number_01} is Zero number"
elsif random_number_01 % 2 == 0
	p "#{random_number_01} is Even number"
else
	p "#{random_number_01} is Odd number"	
end

# 問2
# randを使って「1〜100」までの数字を生成します
# 80以上の場合は「A rank」
# 60以上〜80未満の場合は「B rank」
# 40以上〜60未満の場合は「C rank」
# 40未満の場合は「D rank」と表示するプログラムを書いてください

point = rand(1..100)

if point >= 80
	p "#{point} A rank!!"
elsif point < 80 and point >= 60
	p "#{point} B rank!!"
elsif point < 60 and point >= 40
	p "#{point} C rank!!"
elsif point < 40
	p "#{point} D rank!!"	
end

# 問3
# rand(1..3)とすることで「1〜3」までのランダムな整数を生成します
# １〜３までの数を「じゃんけんの手札」に見立てたプログラムを記述してください
# 1の場合は "rock!"
# 2の場合は "scissor!"
# 3の場合は "paper!"
# となるように出力するプログラムを書いてください

janken_hand_number = rand(1..3)

# 値が決まってるような場合の条件分岐はcaseが良かったりします
case janken_hand_number
when 1
	p "rock!"
when 2
	p "scissor!"
when 3
	p "paper!"
end

# 問4
# 問2で作成した「じゃんけんの手札」ですがプレイヤーを二人にして勝負させたいとします
# プレイヤー1の手を「player_1_janken_hand」
# プレイヤー2の手を「player_2_janken_hand」
# とし、それぞれ乱数で「じゃんけんの手」を生成させた勝負してどちらか勝った方のプレイヤーを表示させてください
# また、あいこの場合は両方のプレイヤーを表示させるようにしてください

player_1_janken_hand = rand(1..3)
player_2_janken_hand = rand(1..3)
# hashのキーに数字を使っているケースです(keyとvalueの指定の書き方が少し違いますね)
janken_hand = {
	1 => "rock",
	2 => "scissor",
	3 => "paper"
}

if (player_1_janken_hand == player_2_janken_hand)
	p "draw!"
elsif (
	(player_1_janken_hand == 1 and player_2_janken_hand == 2) or 
	(player_1_janken_hand == 2 and player_2_janken_hand == 3) or 
	(player_1_janken_hand == 3 and player_2_janken_hand == 1)
	)
	p "player_1 is #{janken_hand[player_1_janken_hand]} , player_2 is #{janken_hand[player_2_janken_hand]} , Winner is player_1"
elsif (
	(player_1_janken_hand == 1 and player_2_janken_hand == 3) or 
	(player_1_janken_hand == 2 and player_2_janken_hand == 1) or 
	(player_1_janken_hand == 3 and player_2_janken_hand == 2)
	)
	p "player_1 is #{janken_hand[player_1_janken_hand]} , player_2 is #{janken_hand[player_2_janken_hand]} , Winner is player_2"
end

# 問5
# FizzBuzzゲームという遊びがあります(https://ja.wikipedia.org/wiki/Fizz_Buzz)
# ・１から順番に数を数えながらコールしていく
# ・ただし３の倍数の時は「Fizz」とコールする
# ・ただし５の倍数の時は「Buzz」とコールする
# ・ただし１５の倍数の時は「FizzBuzz」とコールする
#
# 1から100までを数えて「Fizz」「Buzz」「FizzBuzz」を出力するプログラムを書いてください
# 出力例
# 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, Fizz Buzz
# みたいな感じです
# ポイント -> 1〜100までをループで表現するにはどうすればよいでしょうか？

# timesメソッドを使うと指定数の繰り返しが行えます
# また以下のようにすることで変数iに0から指定数-1までの数が入るのでそれを利用することもできます
# 100.times do |i|
#   #なにかしらの処理
# end
100.times do |i|
	call_number = i + 1
	if (call_number % 3 == 0) and (call_number % 5 == 0)
		p "Fizz Buzz!"
	elsif (call_number % 3 == 0)
		p "Fizz!"
	elsif (call_number % 5 == 0)
		p "Buzz!"
	else
		p call_number
	end
end

# 問6
# 10個の「整数」要素を持つ配列にランダムな整数をセットしてください
# その中で「100」以上の数が何個あるかを数えて出力するプログラムを書いてください
# ヒント => 数をカウントする用の変数があるとよさそう

numbers = []
10.times do |i|
	# このrandom_numberという変数はdo~endの中でしか利用できません(変数のスコープ)
	random_number = rand(1000)
	numbers.push(random_number)
end
# 配列から条件にあったやつだけを数える
count_variable = numbers.count { |number| number >= 100 }
# 別の書き方
#count_variable = numbers.count do |number|
#	number >= 100
#end

p "Array values #{numbers}"
p "Over 100 number count is #{count_variable}"

# 問7
# 以下の文字列が格納された配列は各データに「半角スペース」が入っているものとそうでないものがあります
# 半角スペースを取り除いた配列を新たに作成するプログラムを書いてください
# ヒント => mapというメソッドがあります
arrays = [
  "hoge  ",
  "  moge",
  "piyo  ",
  "fuga"
]

# mapで要素の数だけ繰り返しを行い、ブロックの中で実行された処理の値の配列を返す
# 文字列.gsub("置き換え対象文字", "置き換えたい文字")
removed_half_space_arrays = arrays.map { |v| v.gsub(" ", "") }
p removed_half_space_arrays

# 問8
# 以下の表を配列とハッシュを利用して表現してください
# 名前は文字列、点数は整数にしてください
#  名前     国語   数学　　英語
#  user_1   98点   87点　　63点
#  user_2　 63点　　82点　　100点
#  user_3   95点　　71点　　88点

students = [
	{ name: "user_1", national_language: 98,  mathematics: 87, english: 63 },
	{ name: "user_2", national_language: 63,  mathematics: 82, english: 100 },
	{ name: "user_3", national_language: 95,  mathematics: 71, english: 88 },
]

p students

# 問9
# 問8で作成したデータを用いて
# 1. 平均点が最も高い人
# 2. 各教科ごとの点数が１番高い人
# 上記を別のハッシュを用意してセットして出力するコードを書いてください

# 平均点の要素を追加するハッシュを新規で作成する
# each_with_indexで配列の「添字」と「そのデータ」を取得できる
# do...endの中でロジックを組み立てる
students_with_average = students.each_with_index do |student, index|
	# 3教科を合計する値と平均値のハッシュの要素をそれぞれ追加する
	students[index][:total] = (student[:national_language] + student[:mathematics] + student[:english])
	students[index][:average] = (students[index][:total] / 3).floor
end

# 今回はやっている処理をわかりやすくするためにあえて回りくどい書き方をしています
# 以下で利用している配列やハッシュのメソッドがそれぞれ何をしているかを確認しながら読んでください

# ハッシュの各値を別の配列に格納します
students_national_language_list = students_with_average.map { |student| student[:national_language] }
students_mathematics_list = students_with_average.map { |student| student[:mathematics] }
students_english_list = students_with_average.map { |student| student[:english] }
students_average_list = students_with_average.map { |student| student[:average] }

# 配列.maxを利用すると最大値が取得できます、その値の「添字」を取得して、それを元のハッシュの配列の添字にアクセスするために利用する
student_with_highest_score_in_national_language = students[students_national_language_list.index(students_national_language_list.max)]
student_with_highest_score_in_mathematics = students[students_mathematics_list.index(students_mathematics_list.max)]
student_with_highest_score_in_english = students[students_english_list.index(students_english_list.max)]
student_with_highest_score_in_average = students[students_average_list.index(students_average_list.max)]

# 出力
p "Student with highest score in national_language is #{student_with_highest_score_in_national_language[:name]}"
p "Student with highest score in mathematics is #{student_with_highest_score_in_mathematics[:name]}"
p "Student with highest score in english is #{student_with_highest_score_in_english[:name]}"
p "Student with highest average is #{student_with_highest_score_in_average[:name]}"


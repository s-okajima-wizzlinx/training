#
# 以下の理解度を確認する問題です
#  ・自分でメソッドを定義する
#

# 問1
# 二つの整数値を引数(パラメータ)として受け取り、その値の合計を戻り値として返すメソッドを定義してください
def add_numbers(x, y)
	x + y
end

p add_numbers(100,200)

# 問2
# 円の面積を求めるメソッドを定義してみてください
# 円の面積 = 半径 × 半径　× 円周率
# 今回円周率は3.14で固定し、「定数」を利用してください

PI = 3.14
def calculate_circle_area(radius: )
  (radius * radius * PI)
end

p calculate_circle_area(radius: 10)

# 問3
# 三角形の面積を求めるメソッドを定義してみてください
# 三角形の面積 = 底辺　× 高さ ÷ 2
# 「名前付き引数」を利用して定義してください
def calculate_triangle_area(base: , height:)
  (base * height) / 2
end

p calculate_triangle_area(base: 10, height: 20)

# 問4
# FizzBuzz(20190701.rbの問5)をメソッドを利用して書き換えたいです
# 以下の３つのメソッドを定義してコードをリファクタリングしてください
#   ・Fizzかどうかを判定するメソッド「is_fizz?」
#   ・Buzzかどうかを判定するメソッド「is_buzz?」
#   ・FizzBuzzかどうかを判定するメソッド「is_fizz_buzz?」
#   ・それぞれのメソッドはパラメータとして「call_number」(整数)を受け取り
#   ・戻り値として「真偽値」(trueまたはfalse)を返してください(つまりfizzだった場合はtrueを返すということです)
# リファクタリング = 処理はそのままに、コードを修正してより良くすること
# ポイント => 見落としやすいことが隠されてます、条件を書くときによく考えてみてください

def is_fizz?(call_number:)
	(call_number % 3 == 0) && !(call_number % 15 == 0)
end

def is_buzz?(call_number:)
	(call_number % 5 == 0) && !(call_number % 15 == 0)
end

def is_fizz_buzz?(call_number:)
	(call_number % 3 == 0) and (call_number % 5 == 0)
end

# 条件式をメソッドに置き換えた
100.times do |i|
	call_number = i + 1
	if is_fizz_buzz?(call_number: call_number)
		p "Fizz Buzz!"
	elsif is_fizz?(call_number: call_number)
		p "Fizz!"
	elsif is_buzz?(call_number: call_number)
		p "Buzz!"
	else
		p call_number
	end
end

# 問5
# ロジスピではユーザーIDを「logi001」のような形式で扱います
# ※今回の仕様としては「logi」で始まり「連番」を３桁のコードで扱うという形で統一します
# 引数で渡されたユーザーIDが「Aグループ」(偶数)か「Bグループ」(奇数)かを判定するメソッドを定義してください
#  ・引数　　user_id(文字列)
#  ・戻り値　グループの文字列(Aグループなら"A" / Bグループなら"B")
# ポイント => いくつかの処理を組み合わせる必要があると思います、適宜メソッドに切り出す等を行うと良いかもしれません

USER_ID_PREFIX = "logi"
user_id = "logi003"


def remove_prefix_from_id(prefix: , id:)
	id.delete(prefix)
end

def get_user_id_number(user_id:)
	remove_prefix_from_id(prefix: USER_ID_PREFIX, id: user_id).to_i
end

def judge_user_group(user_id:)
	group = ""
	if get_user_id_number(user_id: user_id) % 2 == 0
		group = "A"
	else
		group = "B"
	end

	group
end


p remove_prefix_from_id(prefix: 'logi', id: user_id)
p get_user_id_number(user_id: user_id)
p judge_user_group(user_id: user_id)




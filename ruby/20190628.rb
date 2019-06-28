#
# 20190628.rbを作成する
# 以下の理解度を確認する問題です
#   ・変数の宣言、初期値のセット、代入
#   ・変数のデータ型(整数、少数、文字列、真偽値)
#   ・四則演算、計算の順序
#   ・文字列の連結
#   ・メソッドの呼び出し
#   ・配列の宣言と値の代入
#   ・ハッシュの宣言と値の代入
#

# 問題1
# 変数numberを宣言し整数100を代入する(初期化する)コードを書いてください
number = 100
p "The value number is #{number}"

# 問題2
# 先に宣言したnumberを200に再代入してください
number = 200
p "The value number is #{number}"

# 問題3
# 商品の価格に相当する変数「price」を宣言し980代入します
# 次に税率に相当する変数として「tax_rate」を宣言し税率として1.08(8%)を代入します
# 税込価格に相当する変数「price_included_tax」を宣言し「税込の価格」を計算して代入してください
# 税込価格の計算ですが小数点以下は切り捨てるようにしてください
# ポイント => 変数のあとに.floorとすることで小数点以下を切り捨てた値が取得できます
# test_value = 123.45
# p test_value.floor
price = 980
tax_rate = 1.08
price_included_tax = (price * tax_rate).floor
p "Price including tax is #{price_included_tax} yen"

# 問題4
# 先に計算した税込価格「price_included_tax」と商品の価格「price」をもとに
# 消費税分を「tax」という変数に代入してください
tax = price_included_tax - price
p "Tax is #{tax} yen"

# 問題5
# 文字列の変数「first_name」を宣言し「Takuo」と代入してください
# 同じように文字列型の変数「last_name」を宣言し「Ootani」と代入してください
# space_separated_full_nameという変数に「first_name」と「last_name」を繋げて
# 「Takuo Ootani」となるように代入してください(※姓名の間に半角スペースをいれてください)
first_name = "Takuo"
last_name = "Ootani"
space_separated_full_name = first_name + " " + last_name
p "My name is #{space_separated_full_name}"

# 問題6
# 先に作成した「space_separated_full_name」は姓名の間に半角スペースが存在しているはずです
# 新しく変数「full_name」という変数を用意して
# space_separated_full_nameをもとに半角スペースを取り除いた文字列をセットするコードを書いてください
# ただし「first_name」と「last_name」を新たにつなげるのではなく、あくまで「space_separated_full_name」から
# 半角をとりのぞくようにしてください
full_name = space_separated_full_name.delete(" ")
p full_name

# 問題7
# full_nameの文字数を出力するコードを書いてみてください
# ポイント => 変数のあとに.lengthとつなげるとその文字列の文字数が取得できます
p "The number of characters is #{full_name.length}"

# 問題8
# scoresという「配列型」の変数を宣言するコードを書いてください
# 値のない空の配列で大丈夫です
scores = []
p scores

# 問題9
# 先に用意した配列「scores」に値を代入していきます
# 先頭の要素に100を代入してください
# ２番目の要素に200を代入してください
# ３番目の要素に300を代入してください
scores[0] = 100
scores[1] = 200
scores[2] = 300
p scores

# 問題10
# 配列「scores」の要素の数を数えたいです
# scores_countという変数を用意して「scores」の数を数えて代入するコードを書いてください
# ポイント => 配列の変数の後ろに.countとつけるとその配列の要素数が取得できます
scores_count = scores.count

# 問題11
# 配列「scores」とその個数「scores_count」をもとに
# 配列「scores」の平均点を算出するコードを書いてください
# 平均点を格納する変数は「average」とします
average = (scores[0] + scores[1] + scores[2]) / scores_count # 本当はもう少し綺麗に書けたりしますw
p "The average value of scores is #{average}"

# 問題12
# 郵便番号に相当する文字列変数としてpost_codeを宣言し「590-0906」を代入します
# このpost_codeをもとに郵便番号の上３桁と下４桁の部分のみをそれぞれ知りたいとします
# 上３桁を「post_code_upper_digit」という変数に
# 下４桁を「post_code_lower_digit」という変数に
# それぞれ格納するコードを書いてください(解法はいくつかあります)
post_code = "590-0906"
post_code_elements = post_code.split("-")
post_code_upper_digit = post_code_elements[0]
post_code_lower_digit = post_code_elements[1]
p "post_code_upper_digit is #{post_code_upper_digit} , post_code_lower_digit is #{post_code_lower_digit}"

# 問題13
# 以下の要素を持つハッシュ「user」を宣言してください
# 各要素は以下のように初期値を設定してください
# name       文字列 ""
# email      文字列 ""
# password   文字列 ""
# is_logined 真偽値 false
user = { name: "", email: "", password: "", is_logined: false }
p user

# 問題14
# 先に用意したハッシュ「user」の各要素に値を代入するコードを書いてください
user[:name] = "okajima"
user[:email] = "okajima@test.jp"
user[:password] = "password"
p user

# 問題15
# ハッシュ「user」の要素「is_logined」はfalseになっています
# trueに上書きしてください
user[:is_logined] = true
p user



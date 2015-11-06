class Food
  @@Foods = []
  def initialize(kal, name)
    @name = name
    @kal = kal

  end
  def kal
    @kal
  end
  def name
    @name
  end

def self.nyuuryoku
  puts "カロリーを入力してください。"
kal = gets.to_i
puts "料理名を入力してください。"
name = gets.chomp
food = Food.new(kal, name)
@@Foods << food
end

def self.sum
  @all_kal = 0
  num = 0
  @@Foods.each do |food|
    puts "[#{num}]料理名:#{food.name} カロリー:#{food.kal}"
    @all_kal = @all_kal + food.kal
    num += 1
  end
  puts "カロリーを見たい番号を入力してください。"
  input = gets.to_i
  foods = @@Foods[input - 1]
  puts "料理名:#{foods.name} カロリー:#{foods.kal}"


  puts "今までの合計:#{@all_kal}"
end


while true do
puts "カロリー計算アプリ*入力数：#{@@Foods.count}"
puts "カロリー入力[0]"
puts "合計を見る[1]"
puts "アプリの終了[2]"
input = gets.to_i

if input == 0
Food.nyuuryoku

  elsif input == 1
    Food.sum

  else exit
end
end
end

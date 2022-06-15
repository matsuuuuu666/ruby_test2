  puts "じゃんけん..."
   
def janken
  puts "[0]:グー,[1]:チョキ,[2]:パー,[3]:戦わない"

 @result = ""
 player_hand = gets.to_i
 cp_hand = rand(3)
 jankens = ["グー","チョキ","パー","戦わない"]
  
  puts "ほい！"
  puts "----------"
  puts "あなた：#{jankens[player_hand]}を選択しました"
  puts "相手：#{jankens[cp_hand]}を選択しました"
   
 win = (player_hand === 0 && cp_hand === 1) || (player_hand === 1 && cp_hand === 2) || (player_hand === 2 && cp_hand === 0)
 lose = (player_hand === 1 && cp_hand === 0) || (player_hand === 2 && cp_hand === 1) || (player_hand === 0 && cp_hand === 2)
 end_game = (player_hand === 3 )
 mis_input = (player_hand > 3)

 if player_hand === cp_hand
   puts "あいこで..."
   @result = "draw"
   return true
 elsif win
   puts "あなたはじゃんけんに勝ちました"
   @result = "win"
   @case_pattern = "again"
   return false
 elsif lose
   puts "あなたはじゃんけんに負けました"
   @result = "lose"
   @case_pattern = "again"
   return false
 elsif end_game
   puts "じゃんけんを終了します"
 elsif mis_input
   puts "※入力に誤りがあります"
   puts "正しい値（0~3）を選択して、入力してください"
   puts "じゃんけん..."
   janken
 end
end

 def hoi
  
  if @result === "win"
    puts "あっち向いて〜"
    puts "[0]:上,[1]:下,[2]:左,[3]:右"

    player_input = gets.to_i
    cp_input = rand(4)
  
    directons = ["上","下","左","右"]
  
    puts "あなた：#{directons[player_input]}"
    puts "相手：#{directons[cp_input]}"
  
    if (player_input === cp_input)
      puts "あなたの勝ちです！"
      @case_pattern = "end"
    else
      puts "じゃんけん..."
      @case_pattern = "again"
      janken
    end
  end

  if @result === "lose"
    puts "あっち向いて〜"
    puts "[0]:上,[1]:下,[2]:左,[3]:右"

    player_input = gets.to_i
    cp_input = rand(4)
  
    directons = ["上","下","左","右"]
  
    puts "あなた：#{directons[player_input]}"
    puts "相手：#{directons[cp_input]}"
  
    if (player_input === cp_input)
      puts "あなたの負けです..."
      @case_pattern = "end"
    else
      puts "じゃんけん..."
      @case_pattern = "again"
      janken
    end
  end
  
  if @result === "draw"
    janken
  end
  
 end
 
  next_game = true
 
  while next_game do
    next_game = janken
  end
  
  while @case_pattern === "again"
    hoi
  end
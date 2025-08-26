# db/seeds.rb

# 既存のデータを全て削除してから追加する場合
Theme.destroy_all

Theme.create!([
  { title: '最近、一番笑ったことは？' },
  { title: 'おすすめの休日の過ごし方' },
  { title: '好きな映画を３つ教えて！' },
  { title: '10年後の自分に一言' },
  { title: 'もし魔法が一つだけ使えたら？' }
])

puts "テーマの初期データ投入が完了しました！"
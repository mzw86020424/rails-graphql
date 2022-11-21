100.times do |i|
  User.create!(
    name: "ユーザー #{i + 1}",
    age: (10..100).to_a.sample,
  )
end

1000.times do |i|
  Tweet.create!(
    content: "つぶやき #{i + 1}",
    user_id: User.all.ids.sample,
  )
end
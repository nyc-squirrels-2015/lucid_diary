#seed users
10.times do
  User.create(name:Faker::Name.name,password:Faker::Internet.password)
end


#seed categories
categories = ['events','sports','sci-fi','food','celebrities','animals','nightmares','health','travel','school']

10.times do
  Category.create(title:categories.shuffle.shift)
end


#seed dreams
 dreams = ['I dreamt that I met Nelson Mandela.','I dreamt that I farted on national television.','I dreamt that I was on the moon.','I dreamt that I was Fresh Prince of Bel Air.',' I dreamt that I was eating sandwiches with bright blue mushrooms sprouting from them and later puking uncontrollably.','I dreamt that I was in a zombie apocalypse and died...twice.','I dreamt that my neighborhood was overrun by lions.','I dreamt that my middle finger was split in half.','I dreamt that rick from Pawn Stars was a maniac.','Today I dreamt that I was friends with Jesse Pinkman and in business with Gus Fring. Shit gets real during dinner.']

 user_ids = (1..10).to_a
 category_ids = (1..10).to_a

10.times do
  Dream.create(title:dreams.shuffle.shift,content: Faker::Lorem.paragraph(4), category_id:category_ids.shuffle.shift,user_id:user_ids.shuffle.shift)
end

dreamids = (1..10).to_a
userids = (1..10).to_a

Dream.all.each do |dream|
  rand(10..20).times do
    dream.comments << Comment.create(content:Faker::Lorem.sentence(2), dream_id:dreamids.shuffle.shift, user_id:userids.shuffle.shift)
  end
end
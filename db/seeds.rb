User.create(name:"Vivek",password:"test",password_confirmation:"test")
Dream.create(title:"Coding dreamz",content:"I dreamed about code.",category_id:1,user_id:1)
Category.create(title:"Programming")
Comment.create(content:"WOw that is a crazy dream dude!",dream_id:1,user_id:1)

king = User.create(username: "king kruel" , email: "kkruel@gmail.com" , password: "abc")

kanye = User.create(username: "kanye west" , email: "kwest@gmail.com" , password: "123")

imogen = User.create(username: "imogen heap", email: "iheap@gmail.com", password:"xyz")

king_blog = Blog.create(name: king.username, user_id: king.id)

kanye_blog = Blog.create(name: kanye.username, user_id: kanye.id)

imogen_blog = Blog.create(name: imogen.username, user_id: imogen.id)

king_post = Post.create(text: "Out Getting Ribs", user_id: king.id , blog_id: king_blog.id )

kanye_post = Post.create(text: "All Day", user_id: kanye.id , blog_id: kanye_blog.id)

imogen_post = Post.create(text: "Hide And Seek", user_id: imogen.id , blog_id: imogen_blog.id)
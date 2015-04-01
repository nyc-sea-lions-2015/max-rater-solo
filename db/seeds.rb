king = User.create(username: "kingkruel" , email: "kkruel@gmail.com" , password: "abc")

kanye = User.create(username: "kanyewest" , email: "kwest@gmail.com" , password: "123")

imogen = User.create(username: "imogenheap", email: "iheap@gmail.com", password:"xyz")

king_post = Post.create(text: "Out Getting Ribs", user_id: king.id)

kanye_post = Post.create(text: "All Day", user_id: kanye.id)

kanye_post = Post.create(text: "Power", user_id: kanye.id)

imogen_post = Post.create(text: "Hide And Seek", user_id: imogen.id)

king_blog = Blog.create(name: king.username, user_id: king.id, post_id: king_post.id)

kanye_blog = Blog.create(name: kanye.username, user_id: kanye.id, post_id: kanye_post.id)

imogen_blog = Blog.create(name: imogen.username, user_id: imogen.id, post_id: imogen_post.id)

king.update(blog_id:king_blog.id)

kanye.update(blog_id:kanye_blog.id )

imogen.update(blog_id: imogen_blog.id)
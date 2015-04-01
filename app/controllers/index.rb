get '/' do

erb :display

end

post '/' do

@users = User.create(username: params[:username], email: params[:email], password: params[:password])

@user = User.find_by(email: params[:email])

  if @user && @user.authenticate(params[:password])
    session[:user_id] = @user.id
    redirect '/dashboard'
  else
    flash[:error] = "Login Failed"
    redirect '/'
  end

end

get '/login' do

  erb :'sessions/new'
end

put '/login' do

  @user = User.find_by(email: params[:email])

  if @user && @user.authenticate(params[:password])
    session[:user_id] = @user.id
    redirect '/dashboard'
  else
    flash[:error] = "Your email or password were incorrect"
    redirect '/login'
  end

end

get '/logout' do

session[:user_id] = nil

redirect '/'

end

get '/dashboard' do
 @blogs = current_user.blog

erb :'posts/dash'
end

get '/post/new/:blog_id' do
  @blogs = Blog.find_by(id: params[:blog_id])

erb :'posts/show'
end

post '/post/new/:blog_id' do
@post = Post.create(text: params[:text], blog_id: params[:blog_id])

redirect "/post/new/#{params[:blog_id]}"

end







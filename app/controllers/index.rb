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

get '/dashboard' do

erb :'posts/dash'
end

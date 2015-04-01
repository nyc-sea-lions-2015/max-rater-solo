get '/' do

@user = User.all

erb :display

end

get '/login' do

  erb :'sessions/new'
end

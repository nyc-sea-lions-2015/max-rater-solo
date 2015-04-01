get '/' do

@users = User.all

erb :display

end

get '/login' do

  erb :'sessions/new'
end

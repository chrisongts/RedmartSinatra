class RedmartSinatraApp < Sinatra::Base

  get '/' do
    erb '@ Red Mark Online Store @'
  end

  get '/about' do
    erb '<h1>About</h1>'
  end


  get '/users' do

    @users = User.all

    erb :'users'

  end

  get '/users/:id' do

    @user = User.find(params[:id])
    erb :'each_user'

  end

end

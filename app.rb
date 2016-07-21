class RedmartSinatraApp < Sinatra::Base

  get '/' do

    erb '@ Red Mark Online Store @'
  end

  get '/about'
    erb '<h1>About</h1>'
  end


  get '/users' do

    @users = User.all

    erb :'users'

  end

end

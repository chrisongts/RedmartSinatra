class RedmartSinatraApp < Sinatra::Base

  get '/' do

    erb '@ Red Mark Online Store @'
  end

  get '/users' do

    @users = User.all

    erb :'users'

  end

end

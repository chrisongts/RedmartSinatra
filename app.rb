class RedmartSinatraApp < Sinatra::Base
  get '/' do
    erb '@ Red Mark Online Store @'
  end

  # RESTFUL RESOURCES, CREATE READ UPDATE DELETE

  get '/users' do
    @users = User.all.sort
    erb :'users/index'
  end

  # Register form
  get '/users/new' do
    erb :'/users/new'

    # if params[:id] == 'new'
    #   erb :'users/new'
    # else
    #   @user = User.find(params[:id])
    #   erb :'users/show'
    # end
  end

  # View user
  get '/users/:id' do
    @user = User.find(params[:id])
    erb :'users/show'
  end

  # Edit user form
  get '/users/:id/edit' do
    @user = User.find(params[:id])
    erb :'users/edit'
  end

  # Create new user
  post '/users' do
    @new_user = User.new(params[:user])

    if @new_user.save
      redirect('/users')
    else
      erb :"users/new"
    end
  end

  # Update user
  put '/users/:id' do
    @edit_user = User.find(params[:id])

    redirect('/users') if @edit_user.update_attributes(params[:user])
  end

  # Delete user
  delete '/users/:id' do
    @delete_user = User.find(params[:id])

    if @delete_user.destroy
      # go to all users list
      redirect('/users')
    else
      # throw an error
      erb :"users/#{ @delete_user.id }"
    end
  end

# List all products
  get '/products' do
    @products = Product.all.sort
    erb :'products/index'
  end

  # Create new product page
  get '/products/new' do

    erb :'/products/new'

  end

  # View individual product
  get '/products/:id' do
    @product = Product.find(params[:id])
    erb :'products/show'
  end

  # Edit product details page
  get '/products/:id/edit' do
    @product = Product.find(params[:id])
    erb :'products/edit'
  end

  # Create new product
  post '/products' do
    @new_product = Product.new(params[:product])

    if @new_product.save
      redirect('/products')
    else
      erb :"products/new"
    end
  end

  # Update product details
  put '/products/:id' do
    @edit_product = Product.find(params[:id])

    redirect('/products') if @edit_product.update_attributes(params[:product])
  end

  #Delete product record
  delete '/products/:id' do
    @delete_product = Product.find(params[:id])

    if @delete_product.destroy
      # go to all users list
      redirect('/products')
    else
      # throw an error
      erb :"products/#{ @delete_product.id }"
    end
  end

end   # End of Class

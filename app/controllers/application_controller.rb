class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def show
    @user = User.find_by_id(params['id'])
    render 'show'
  end
  
  def new
  end
  
  def create
    g = User.new
    g.name = params['name']
    g.email = params['email']
    g.save
    redirect_to "/user/#{ g.id }"
  end
end

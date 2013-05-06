class UsersController < ApplicationController
  
 
   
  
  def new
    @user= User.new
  end
  
  def create
     @user = User.new(params[:user])
     
     if @user.save
       flash[:notice] = "You are registred"
       redirect_to(:controller => 'public', :action => 'index')
     else
         render('new')
     end
  end
  
  def show 
    @user = User.find(params[:id])
  end
  
end

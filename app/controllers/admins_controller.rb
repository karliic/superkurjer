class AdminsController < ApplicationController
  
  
  
  def index
    @admins = Admin.all
  end
  
  def new
    @admin = Admin.new
  end
  
  def create
     @admin = Admin.new(params[:admin])
     
     if @admin.save
       redirect_to(:action => 'index')
     else
         render('new')
     end
  end
  
end

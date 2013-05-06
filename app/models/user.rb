class User < ActiveRecord::Base
  
    
    def self.authenticate(username="", password="")
    user = User.find_by_username(username)
     password == User.find_by_password(password)
    if user && password
      return user
      redirect_to(:controller => 'posts', :action => 'index')
    else
      return false
    end
  end

  def password_match?(password="")
    password == User.find_by_password(password)
  end

  
  
  #private
  
 

  def clear_password
    # for security and b/c hashing is not needed
    self.password = nil
  end
  
end

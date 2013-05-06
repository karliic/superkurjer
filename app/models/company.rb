class Company < ActiveRecord::Base
  
    
    def self.authenticate(username="", password="")
    admin = Company.find_by_username(username)
     password == Company.find_by_password(password)
    if admin  && password
      return admin
      redirect_to(:controller => 'posts', :action => 'index')
    else
      return false
    end
  end

  def password_match?(password="")
    password == Company.find_by_password(password)
  end

  
  
  #private
  
 

  def clear_password
    # for security and b/c hashing is not needed
    self.password = nil
  end
  
  
end

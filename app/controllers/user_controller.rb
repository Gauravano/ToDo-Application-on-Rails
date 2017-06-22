class UserController < ApplicationController
  
  def index
	if session[:p].nil?
		return redirect_to '/user/signin'
	else
		@todos = Todo.where(user_id: session[:p])
	end
  end

  def signin
  end

  def signout
  end

  def signin_submit
  	password = params["password"]
  	email = params["email"]

  	user = User.where(email: email).first

  	if user
  		if user.password == password
  			session[:p] = user.id
  			return redirect_to '/user/index'
  		else
  			return redirect_to '/user/signin'
  		end
  	else
  		return redirect_to 'user/signup'
  	end
end

def signup_submit
	password = params["password"]
	email = params["email"]
	name = params["name"]

  user = User.where(email: email).first

  if user
    return redirect_to '/user/signup'
  else
      user = User.new
      user.name = name
      user.email = email
      user.password = password
      user.save
      session[:p]= user.id
      return redirect_to '/user/ndex'

    end
  end

  def logout
    session[:p]  nil
    return redirect_to '/user/index'
  end
end    

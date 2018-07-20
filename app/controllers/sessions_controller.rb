class SessionsController < ApplicationController
  def new
  end
  def create

    user = User.find_by_username(params[:session][:username])
    if user
      if user.authenticate(params[:session][:password])

        session[:user_id] = user.id
        flash.now[:success] = "You have successfully logged in"
        redirect_to posts_showall_path
      else
        flash.now[:success] = "User id and password does not match"
        render 'new'
      end
else
    flash.now[:danger] = "User does not exist"
      render 'new'
    end
  end

  def logout
    session[:user_id] = nil
    flash.now[:success] = "You have logged out"
    redirect_to root_path
  end
def update
  a=params[:arg]
  case a
when "email"    #compare to 1
  puts current_user
  current_user.email=params[:value]
  user=User.find_by_username(current_user.username);
  user.email=params[:value]
  user.save
when "phone"    #compare to 2
  puts "it was phone"
  current_user.phone=params[:value]
  user=User.find_by_username(current_user.username);
  user.phone=params[:value]
  user.save
when "dob"
  puts "it is dob"
  current_user.dob=params[:value]
  user=User.find_by_username(current_user.username);
  user.dob=params[:value]
  user.save
when "dom"
  puts "it is dom"
  current_user.dom=params[:value]
  user=User.find_by_username(current_user.username);
  user.dom=params[:value]
  user.save
when "doj"
  puts "it is doj"
  current_user.doj=params[:value]
  user=User.find_by_username(current_user.username);
  user.doj=params[:value]
  user.save
else
  puts "it was something else"
end



redirect_to :back
end
end

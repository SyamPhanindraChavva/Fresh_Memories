class UsersController < ApplicationController
  def new
    @user=User.new
  end
  def create
    if params[:status] =="married"
    @post=User.new(username:params[:username],email:params[:email],phone:params[:phone],dob:params[:dob],dom:params[:dom],doj:params[:doj],password:params[:password],gender:params[:gender])
    if @post.save
      redirect_to pages_login_path
    end
  elsif params[:status] =="single"
    @post=User.new(username:params[:username],email:params[:email],phone:params[:phone],dob:params[:dob],dom:"",doj:params[:doj],password:params[:password],gender:params[:gender])
    if @post.save
      puts "Hi"
      redirect_to pages_login_path
    end
  end

end
  def show
  end
  def edit

  end
  def update
  end
  def destroy

  end
 def about

 end

end

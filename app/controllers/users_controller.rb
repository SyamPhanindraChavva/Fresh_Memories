class UsersController < ApplicationController
  def new
    @user=User.new
  end
  def create
    puts params[:avatar]
    params[:dom] = "" if params[:status] == "single"
    @post=User.new(username:params[:username],email:params[:email],phone:params[:phone],dob:params[:dob],dom:params[:dom],doj:params[:doj],password:params[:password],gender:params[:gender])
    @post.avatar.attach(params[:avatar])
    if @post.save
      redirect_to pages_login_path
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

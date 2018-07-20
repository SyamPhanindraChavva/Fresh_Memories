class PagesController < ApplicationController
  def home

  end
  def posts
  end
  def about
  end
  def help
  end
  def login
  end
  def check

  end
  def signup
  end
  def insert
    if params[:status] =="married"
    @post=User.new(username:params[:username],email:params[:email],phone:params[:phone],dob:params[:dob],dom:params[:dom],doj:params[:doj],password:params[:password])
    if @post.save
      flash[:error]=error.full_
  elsif params[:status] =="single"
    @post=User.new(username:params[:username],email:params[:email],phone:params[:phone],dob:params[:dob],dom:"",doj:params[:doj],password:params[:password])
    @post.save
  end
  end

end
end

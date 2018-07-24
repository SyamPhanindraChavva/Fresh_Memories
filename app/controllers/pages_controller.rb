class PagesController < ApplicationController
  def home
if current_user==nil
  puts "new"
else
  redirect_to posts_showall_path
end
  end
  def new
    User.new
  end
  def posts

    a=params[:link]
    puts a
    @update=false
    if a!=nil
      if a.length>12
        @mem=User.find_by_link(a)
        puts @mem
        if @mem==nil
            render 'home'
        else
            session[:user_id]=@mem.id
        end
      else
        @update=true
        @postid=params[:link]

      end
    end
  end
  def comment
    if @update==true
    l=Post.find(@postid)
    l.title=params[:titl]
    l.save
    l.message=params[:content]
    l.save
  redirect_to posts_showall_path
  else
    l=Post.new(title:params[:titl],
    message:params[:content],user_id:session[:user_id])
    l.save
    puts params[:title]
    redirect_to posts_showall_path
  end
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
  elsif params[:status] =="single"
    @post=User.new(username:params[:username],email:params[:email],phone:params[:phone],dob:params[:dob],dom:"",doj:params[:doj],password:params[:password])
    @post.save
  end
  end

end
end

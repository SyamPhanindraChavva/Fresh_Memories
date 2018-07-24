class PostsController < ApplicationController
  def new

  end
  def create

  end
  def showall
@posts=Post.order("id DESC")
@user=User.new
  end
  def destroy

  end
  def update

  end
  def userposts
  @temp=params[:user]
  end
end

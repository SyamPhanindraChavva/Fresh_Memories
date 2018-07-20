class PostsController < ApplicationController
  def new

  end
  def create

  end
  def showall
@posts=Post.all
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

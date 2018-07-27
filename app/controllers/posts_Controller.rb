class PostsController < ApplicationController
  def new

  end
  def create

  end

def like
  puts "hai"
id=  params[:post]
l=Like.new(post_id:id,user_id:current_user.id)
l.save
puts "like potachu saved"
redirect_to posts_showall_path
end

def unlike
id=  params[:post]
l=Like.find_by_post_id_and_user_id(id,current_user.id)
l.destroy
puts "like a thukiyachi saved"
redirect_to posts_showall_path
end
def usercomment
  p_id=params[:post_id]
  c_des=params[:value]
  u_id=current_user.id
  Comment.create(post_id:p_id,user_id:u_id,description:c_des)
  redirect_to posts_showall_path
end
  def showall
    @posts=Post.order("id DESC")

@user=User.new
  end

  def comment
    puts params[:title]
    puts params[:content]

  end
  def userposts
  @temp=params[:user]
  end


end

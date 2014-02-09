class HomeController < ApplicationController
  def index
     @a = Quest.last
  end

  def edit
    @q = Quest.last

  end

  def edit_process
    q = Quest.last
    q.title=params[:quest_title]
    q.category=params[:quest_category]
    q.content=params[:quest_content]
    q.schedule=params[:quest_schedule]
    q.save
    redirect_to :action => "edit"
  end

  def view
     @a = Quest.last
  end

  def add_post
    p = Quest.last.posts.new
    p.title = params[:title]
    p.save
    redirect_to :action => "edit"
  end

  def add_reply
    r =Post.find(params[:post_id]).replies.new
    r.title = params[:title]
    r.content = params[:content]
    r.save
    redirect_to :action => "edit"
  end
  def delete_reply
    r = Reply.find(params[:reply_id])
    r.destroy
    redirect_to :action => "edit"
  end
  def delete_post
    p = Post.find(params[:post_id])
    p.destroy
    redirect_to :action => "edit"
  end




end

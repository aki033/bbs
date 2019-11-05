class TopicsController < ApplicationController
  def index
    @topics = Topic.all
    @newtopic = Topic.new
  end

  def show
    @topic = Topic.find(params[:id])
    @posts = Post.where(topic_id: params[:id])
    @newpost = Post.new(:topic_id => params[:id])
  end

  def create
    @topic = Topic.new(params[:topic].permit(:title))
    @topic.save
    redirect_to root_path
  end

  def delete
    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to root_path
  end
end

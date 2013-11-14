class ErtongdengController < ApplicationController

  def index
    @havemap=true
    @message =Message.new

  end

  def about
  end

  def ertongdenglianxi
  end
  def xiaohaizi

  end
  def create
    #留言
    message=Message.new(params[:message])
    message.save()
    redirect_to(:controller => 'ertongdeng_liuyan',:action => 'index')

  end
end

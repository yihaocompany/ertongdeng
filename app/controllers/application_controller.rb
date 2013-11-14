class ApplicationController < ActionController::Base

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :yihaoconfig
  def yihaoconfig
    @C=Hash.new
    @con=Webconfig.all
    @con.each do |item|
      @C[item.key]=item.value
    end
    @link=Link.order('orderid desc')
    @blogtype=BlogType.order('id asc')
    @articletype=Articletype.order('id asc,orderid desc')
    @ertongdengtype=Protype.order('id asc')
  end
end

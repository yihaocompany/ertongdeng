require 'rubygems'
require 'RMagick'
class HomeController < ApplicationController
 # layout('')
 # model :NoisyImage
  def index
   # @name=Webconfig.find(1)
  @ad=Adv.order('orderid desc') #返回广告图片

  end

  def verifycode
    session[:noisy_image]=NoisyImage.new(4)
    session[:code] =session[:noisy_image].code
    image = session[:noisy_image].code_image
    send_data image, :type => 'image/jpeg', :disposition => 'inline'
  end

end

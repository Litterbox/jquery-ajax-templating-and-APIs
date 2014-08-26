class DemoController < ApplicationController
  def index
  	 @demo = Demo.all
  end

end

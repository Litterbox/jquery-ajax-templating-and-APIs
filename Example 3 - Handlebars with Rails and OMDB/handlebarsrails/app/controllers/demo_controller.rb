class DemoController < ApplicationController
    respond_to :json, :html
  def index
  	respond_with @demo = Demo.all
  	# respond_to do |format|
  	# 	format.html {render :index}
   #    format.json
  	# end
  end

  def show
  end
end

class HomeController < ApplicationController
  
  def index
  	respond_to do |format|
      format.html
      format.pdf { render pdf: "contents", template: "home/another" }
  	end
  end

end
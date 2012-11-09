class StaticPagesController < ApplicationController
  def home
  end

  def help
  	@title = "Help"
  end

  def about
  	@title = "About Us"
  end
  	
  def contact
  	@title = "Contact"
  end
  
end

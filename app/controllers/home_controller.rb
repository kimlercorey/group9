class HomeController < ApplicationController

before_filter :set_cache_headers



  def search 
    @results = PgSearch.multisearch(params[:q]).where(:searchable_type => "Item")
  end

  def loggedout
   
    
  end

def forced_loggedout
   cookies["cart"] = { :value => '', :path => '/' }
   flash[:notice] = "Your cart has been abandoned."
   redirect_to :action => :loggedout
end

  


private
 
  def set_cache_headers
    response.headers["Cache-Control"] = "no-cache, no-store, max-age=0, must-revalidate"
    response.headers["Pragma"] = "no-cache"
    response.headers["Expires"] = "Fri, 01 Jan 1990 00:00:00 GMT"
  end

end

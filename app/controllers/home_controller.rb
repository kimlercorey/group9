class HomeController < ApplicationController

  def search 
    @results =Item.search_main(params[:q])
  end

end

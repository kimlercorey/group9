class HomeController < ApplicationController

  def search 
    @results = PgSearch.multisearch(params[:q]).where(:searchable_type => "Item")
  end

  def loggedout

  end
end

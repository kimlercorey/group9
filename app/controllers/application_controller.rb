class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  # Set the page logout behaviour 
  before_filter :set_last_page
def set_last_page
  if !request.xhr? && !request.url.match(/store\/users\/sign_in/) && !request.url.match(/store\/users\/sign_out/)
    session[:return_to] = request.url
  end
end
def after_sign_in_path_for(user)
  session[:return_to] || :loggedout_url
end
def after_sign_out_path_for(user)
  session[:return_to] || :loggedout_url
end



end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :reset_session

before_filter :set_last_page
def set_last_page
  if !request.xhr? && !request.url.match(/users\/sign_in/) && !request.url.match(/users\/sign_out/)
    session[:return_to] = request.url
  end
end
def after_sign_in_path_for(resource_or_scope)
  session[:return_to] || root_url
end
def after_sign_out_path_for(resource_or_scope)
  session[:return_to] || root_url
end


end

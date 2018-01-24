class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session, :if => Proc.new { |c| c.request.format == 'application/json' }
  protect_from_forgery with: :exception
  acts_as_token_authentication_handler_for User

end

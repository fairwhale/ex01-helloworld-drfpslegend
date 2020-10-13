class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Token::ControllerMethods

  before_action :authorized

  def current_account
    @current_account || authenticate_or_request_with_http_token do |jwt_token, options|
      
      begin
        decoded_token = JWT.decode
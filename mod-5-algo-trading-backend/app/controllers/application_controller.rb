class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Token::ControllerMethods

  before_action :authorized

  def current_account
    @current_account || authenticate_or_request_with_http_token do |jwt_token, options|
      
      begin
        decoded_token = JWT.decode(jwt_token, "password123")

      rescue JWT::DecodeError
        return nil
      end

      if decoded_token[0]["a
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

      if decoded_token[0]["account_id"]
        @current_account ||= Account.find(decoded_token[0]["account_id"])
      else
      end
    end
  end

  def logged_in?
    !!current_account
  end

  def authorized
    render json: {message: "Not welcome" }, status: 401 unless logged_in?
  end

end

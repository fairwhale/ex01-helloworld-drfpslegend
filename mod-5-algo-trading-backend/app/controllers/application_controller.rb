class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Token::ControllerMethods

  before_action :authorized

  def current_account
    @current_account || authenticate_or_request
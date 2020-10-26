
class AuthController < ApplicationController
  skip_before_action :authorized, only: [:login]

  def login
    username = params[:username]
    pw = params[:password]
    account = Account.find_by(username: username)

    if account && account.authenticate(pw)
      @current_account = account
      render json: { success: true, token: generate_token(account) }
      # send back a new token
    else
      # send back an error
      render json: { success: false }
    end
  end

  private
  def generate_token(account)
    alg = 'HS256'
    secret = 'password123'
    payload = { account_id: account.id }
    JWT.encode payload, secret, alg
  end

end

class Api::V1::AccountsController < ApplicationController
  before_action :find_account, only: [:update, :show_account]
  skip_before_action :authorized, only: [:create]


    def show_account
      render json: current_account
    end

    def index
      @accounts = Account.all
      render json: @accounts
    end

    def create
      @account = Account.create(account_params)
      Position.create(account_id: @account.id, quantity: 0, trading_pair: 'USD')
      Position.create(account_id: @account.id, quantity: 0, trading_pair: 'BTC-USD')
      Position.create(account_id: @account.id, quantity: 0, trading_pair: 'ETH-USD')
      Position.create(account_id: @account.id, quantity: 0, trading_pair: 'BCH-USD')
      Position.create(account_id: @account.id, quantity: 0, trading_pair: 'LTC-USD')
      render json: @account, status: :accepted
    end

    def update
      @current_account.update(account_params)
      if @current_account.save
        render json: @current_account, status: :accepted
      else
        render json: {errors: @current_account.erros.full_messages}, status: :unprocessible_entity
      end
    end

    private
    def account_params
      params.permit(:username, :email, :password, :id, :cash_deposited)
    end

    def find_account
      @current_account
    end
end
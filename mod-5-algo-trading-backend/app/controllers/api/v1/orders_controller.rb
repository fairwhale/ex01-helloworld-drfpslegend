class Api::V1::OrdersController < ApplicationController
  before_action :find_order, only: [:update]

  def index
    @orders = Order.all
    render json: @orders
  end

  def show
    render json: current_account.orders
  end

  # def show_orders
  #   render json:
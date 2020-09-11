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
  #   render json: current_account.orders
  # end

  def create
    @order = Order.create(order_params)
    @position = Position.find(order_params[:position_id])
    # OrdersJob.perform(order_params)
    render json: @order, status: :accepted
  end

  def update
    @order.update(order_params)
    if @order.save
      render json: @order, status: :accepted
    else
      rende
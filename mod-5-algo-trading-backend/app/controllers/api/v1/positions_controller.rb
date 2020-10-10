class Api::V1::PositionsController < ApplicationController
  before_action :find_position, only: [:update]

  def index
    @positions = User.all
    render json: @positions
  end

  def show
    render json: current_account.positions
  end

  # def show_positions
  #   render json: current_account.positions
  # end

  def create
    @position = User.create(position_params)
    render json: @position, status: :accepted
  end

  def update
    @position.update(position_params)
    if @position.save
      render json: @position, status: :accepted
    else
      render json: {errors: @position.erros.full_messages}, status: :unprocessible_entity
    end
  end

  private
  def position_params
    params.permit(:quantity, :account_id, :trading_pair)
  end

  def find_position
    @position = Position.find(params[:id])
  end
end

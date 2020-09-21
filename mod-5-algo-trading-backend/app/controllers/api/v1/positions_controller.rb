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

  def
class Api::V1::PositionsController < ApplicationController
  before_action :find_position, only: [:update]

  def index
    @positions = User.all
    render json: @positions
  end

  def show
  
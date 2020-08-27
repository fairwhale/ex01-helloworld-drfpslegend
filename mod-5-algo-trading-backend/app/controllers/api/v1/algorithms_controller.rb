
class Api::V1::AlgorithmsController < ApplicationController
  before_action :find_algorithm, only: [:update]

  def index
    @algorithms = Algorithm.all
    render json: @algorithms
  end

  def create
    @algorithm = Algorithm.create(algorithm_params)
    render json: @algorithm, status: :accepted
  end

  def update
    @algorithm.update(algorithm_params)
    if @algorithm.save
      render json: @algorithm, status: :accepted
    else
      render json: {errors: @algorithm.erros.full_messages}, status: :unprocessible_entity
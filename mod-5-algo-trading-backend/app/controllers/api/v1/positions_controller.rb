class Api::V1::PositionsController < ApplicationController
  before_action :find_position, only: [:up
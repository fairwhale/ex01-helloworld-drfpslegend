
class Api::V1::AccountsController < ApplicationController
  before_action :find_account, only: [:update, :show_account]
  skip_before_action :authorized, only: [:create]
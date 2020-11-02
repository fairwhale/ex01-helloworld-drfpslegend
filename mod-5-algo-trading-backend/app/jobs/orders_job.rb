class OrdersJob < ApplicationJob
  queue_as :default

  def self.perform(*args)
    byebug
    # arg
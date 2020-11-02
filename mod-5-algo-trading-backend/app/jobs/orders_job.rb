class OrdersJob < ApplicationJob
  queue_as :default

  def self.per
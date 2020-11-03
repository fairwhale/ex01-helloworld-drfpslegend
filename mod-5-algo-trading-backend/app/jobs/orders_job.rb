class OrdersJob < ApplicationJob
  queue_as :default

  def self.perform(*args)
    byebug
    # args[0]["price"] gives me -> "99.56"
    
    puts args
  end
end

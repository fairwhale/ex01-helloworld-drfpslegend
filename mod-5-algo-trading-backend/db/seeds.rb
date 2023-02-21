# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Account.create(email: 'me@gmail.com', username: 'me', password: 'me2', cash_deposited: 0)
Account.create(email: 'kyle@gmail.com', username: 'kyle', password: 'kyle', cash_deposited: 0)
Position.create(account_id: 1, quantity: 0, trading_pair: 'BTC-USD')
Position.create(account_id: 1, quantity: 0, trading_pair: 'ETH-USD')
Position.create(account_id: 1, quantity: 0, trading_pair: 'LTC-USD')
Position.create(account_id: 1, quantity: 0, trading_pair: 'BCH-USD')
Position.create(account_id: 1, quantity: 1000, trading_pair: 'USD')
Position.create(account_id: 2, quantity: 1.0034, trading_pair: 'BTC-USD')
Position.create(account_id: 2, quantity: 2.34, trading_pair: 'ETH-USD')
Position.create(account_id: 2, quantity: 20, trading_pair: 'LTC-USD')
Position.create(account_id: 2, quantity: 0.45, trading_pair: 'BCH-USD')
Position.create(account_id: 2, quantity: 1020.87, trading_pair: 'USD')

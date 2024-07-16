# frozen_string_literal: true
require 'date'

class Bank

  def initialize
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    if amount >= 10 && withdrawal_less_than_total_balance?(amount)
      @balance -= amount
    elsif amount < 10
      puts 'you must withdraw at least £10'
    else
      puts "you can't withdraw more than you have in your account!"
    end
  end

  def print_statement
    puts '|date|   |balance|'
    puts "|#{Date.today.strftime('%Y-%m-%d')}|     |#{@balance}|"
  end

  def withdrawal_less_than_total_balance?(amount)
    (@balance - amount) >= 0
  end

end

# |date| |balance|
# irb -r ./bank.rb


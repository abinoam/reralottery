#!/usr/bin/env ruby
#coding: utf-8

require 'set'

puts "\n" #break

class Lottery
  attr_reader :numbers
  def initialize
    #lottery draw
    @numbers = Set.new     # all elements are uniq
    @numbers << rand(99999)+1 while @numbers.length < 5
  end
end

lottery = Lottery.new
list = lottery.numbers.to_a # This is just to keep the code working temporarily
number1, number2, number3, number4, number5 = list
serie1, serie2, serie3, serie4, serie5 = Array.new(5) { rand(180)+1 }
number6 = number1 - 1
number7 = number1 + 1
number8 = number2 - 1
number9 = number2 + 1
number10 = number3 - 1
number11 = number3 + 1
number12 = number1 / 100
number13 = number2 / 100
number14 = number3 / 100
number15 = number4 / 100
number16 = number5 / 100
number17 = number1 % 10
puts list

puts "\n" #break

#prizes
prize1 = 400000 #1st
prize2 = 125000 #2n
prize3 = 50000  #3rd
prize4 = 20000  #4th
prize5 = 2000   #Consolation1
prize6 = 1250   #Consolation2
prize7 = 960    #Consolation3
prize8 = 100    #Cantena
prize9 = 20     #Reintegro

#winnings
def show_results(ticket, quantity, prize)
  puts "- - > > Ticket ##{ticket.to_s.rjust(5, '0')} (#{quantity}x) won €#{prize*quantity}. < < - -"
end

tkt_amount = rand(10) + 1 # (1..10)
puts "Iterating through #{tkt_amount} ticket(s)"
puts "==="

tkt_amount.times do

  ticket = rand(99999)+1
  quantity = rand(10)+1
  puts "Ticket: #{ticket} - #{quantity} times"

  if ticket == number1
    show_results(ticket, quantity, prize1)
  end

  if ticket == number2
    show_results(ticket, quantity, prize2)
  end

  if ticket == number3
    show_results(ticket, quantity, prize3)
  end

  if ticket == number4 or
    ticket == number5
    show_results(ticket, quantity, prize4)
  end

  if ticket == number6 or
    ticket == number7
    show_results(ticket, quantity, prize5)
  end

  if ticket == number8 or
    ticket == number9
    show_results(ticket, quantity, prize6)
  end

  if ticket == number10 or
    ticket == number11
    show_results(ticket, quantity, prize7)
  end

  if ticket / 100 == number12 or
    ticket / 100 == number13 or
    ticket / 100 == number14 or
    ticket / 100 == number15 or
    ticket / 100 == number16
    show_results(ticket, quantity, prize8)
  end

  if ticket % 10 == number17
    show_results(ticket, quantity, prize9)
  end
end
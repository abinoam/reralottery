#!/usr/bin/env ruby
#coding: utf-8

puts "\n" #break

#lottery draw
list = []
(list << '%05i' % (rand(99999)+1)).uniq! while list.length < 5
number1, number2, number3, number4, number5 = list
serie1, serie2, serie3, serie4, serie5 = Array.new(5) { rand(180)+1 }
number6 = number1.to_i - 1
number7 = number1.to_i + 1
number8 = number2.to_i - 1
number9 = number2.to_i + 1
number10 = number3.to_i - 1
number11 = number3.to_i + 1
number12 = number1.to_i / 100
number13 = number2.to_i / 100
number14 = number3.to_i / 100
number15 = number4.to_i / 100
number16 = number5.to_i / 100
number17 = number1.to_i % 10
puts list

puts "\n" #break


#winnings
def show_results(a, b)
  puts "Ticket ##{a.to_s.rjust(5, '0')} won €#{b}."
end

tkt_amount = rand(10) + 1 # (1..10)

tkt_amount.times do

  ticket1 = rand(99999)+1
  quantity1 = rand(10)+1

  #prizes
  prize1 = 400000 * quantity1 #1st
  prize2 = 125000 * quantity1 #2n
  prize3 = 50000 * quantity1 #3rd
  prize4 = 20000 * quantity1 #4th
  prize5 = 2000 * quantity1 #Consolation1
  prize6 = 1250 * quantity1 #Consolation2
  prize7 = 960 * quantity1 #Consolation3
  prize8 = 100 * quantity1 #Cantena
  prize9 = 20 * quantity1 #Reintegro

  if ticket1 == number1.to_i
    show_results(ticket1, prize1)
  end

  if ticket1 == number2.to_i
    show_results(ticket1, prize2)
  end

  if ticket1 == number3.to_i
    show_results(ticket1, prize3)
  end

  if ticket1 == number4.to_i or
    ticket1 == number5.to_i
    show_results(ticket1, prize4)
  end

  if ticket1 == number6.to_i or
    ticket1 == number7.to_i
    show_results(ticket1, prize5)
  end

  if ticket1 == number8.to_i or
    ticket1 == number9.to_i
    show_results(ticket1, prize6)
  end

  if ticket1 == number10.to_i or
    ticket1 == number11.to_i
    show_results(ticket1, prize7)
  end

  if ticket1.to_i / 100 == number12.to_i or
    ticket1.to_i / 100 == number13.to_i or
    ticket1.to_i / 100 == number14.to_i or
    ticket1.to_i / 100 == number15.to_i or
    ticket1.to_i / 100 == number16.to_i
    show_results(ticket1, prize8)
  end

  if ticket1.to_i % 10 == number17.to_i
    show_results(ticket1, prize9)
  end
end
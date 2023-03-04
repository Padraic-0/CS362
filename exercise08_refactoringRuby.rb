# Padraic Bergin
# CS 362 Exercise 8: Intermediate Ruby

def noun
  2.times { puts "Noun: Cadillac" }
end

def verb
  2.times { puts "Verb: Accelerate" }
end

def adjective
  3.times { puts "Adjective: Dark" }
end

def adverb
  2.times { puts "Adverb: Confidently" }
end

def gerund
  4.times { puts "Gerund: Grooving" }
end

command_names = ["noun", "verb", "adjective", "adverb", "gerund"]

puts "Enter a command: " + command_names.join(" ")

selection = gets.chomp
begin 
  send(selection)
rescue => e
  puts "Invalid command"
end

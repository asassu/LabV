# Part1: Hello World
puts "Part 1 - Hello World"
class HelloWorldClass
    def initialize(name)
       @name = name.capitalize
    end
    def sayHi
        puts "Hello #{@name}!"
    end
end
hello = HelloWorldClass.new("andrea")
hello.sayHi

puts "Part 2 - Palindrome"

class PalindromeClass
	def palindrome?(string)
	    print "%s - " %string
	    string = string.gsub(/[^0-9a-z]/i, '')
	    string = string.downcase
	    reversed = string.reverse
	    if reversed == string
		puts "true"
	    else
		puts "false"
	    end
	end
	def count_words(string)
	    counter = Hash.new
	    string = string.gsub(/[^0-9a-z]/i, ' ')
	    string = string.downcase
	    words = string.split(/[\s,]+/)
	    words.each {|words| 
		if counter.has_key?(words)
			counter[words] = counter[words] + 1
		else
			counter[words] = 1
		end
	     }
	    puts counter
	end
end
pal = PalindromeClass.new
pal.palindrome?("A man, a plan, a canal -- Panama")
pal.palindrome?("Madam, I'm Adam!")
pal.palindrome?("Abracadabra")
pal.count_words("A man, a plan, a canal -- Panama")
pal.count_words("Doo bee doo bee doo")

puts "Part 3 - Rock, Paper, Scissors"
class RockPaperClass
	
end

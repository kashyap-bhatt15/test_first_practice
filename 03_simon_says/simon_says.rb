#require "rubygems"
#require 'active_support/core_ext/string/inflections.rb'
#include ActiveSupport
#require '/host/RailsInstaller/Ruby1.9.3/lib/ruby/gems/1.9.1/gems/activesupport-3.1.0/lib/active_support/inflector/inflections.rb'
#require "active_support-3.1.0"
#require "titleize-1.2.1"
#require "/home/coder/.rvm/gems/ruby-1.9.3-p194/gems/activesupport-3.0.0/lib/active_support.rb/active_support.rb"
#require "/home/coder/.rvm/gems/ruby-1.9.3-p194/gems/activesupport-3.0.0/lib/active_support.rb/inflector/inflections.rb"
#require 'active_support'

def echo(greeting)
	greeting
end

def shout(greeting)
	greeting.upcase
end

def repeat(greeting, repeat = 2)
	answer = ''
	repeat.times { answer += greeting + " " }
	answer.rstrip
	#return_greeting = greeting
	#(repeat-1).times { return_greeting += " " + greeting }
	#return_greeting
end

def start_of_word(word, length)
	word.slice(0,length)
end

def first_word(words)
	words.split(' ')[0]
end

# I couldn't include active_support or titelize gems so have to use own turn-around.
def titleize(words)
	# All little words in one array
	lw = ["a","an","the","over","and"]
	words.split(" ").each_with_index.map { |w,i| lw.include?(w) ? (i == 0 ? w.capitalize : w) : w.capitalize }.join(' ')
end
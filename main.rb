require 'colorize'
require_relative 'git'


class Main
  include Git

  def self.menu
    puts '1: Enter git command'
    puts '2: Exit'
    choice = gets.to_i
    case choice
    when 1
      puts 'Enter git command'
      puts_git(gets.strip)
      menu
    when 2
      exit
    else
      puts 'Invalid Entry'
      menu
    end
  end
end
Main.menu

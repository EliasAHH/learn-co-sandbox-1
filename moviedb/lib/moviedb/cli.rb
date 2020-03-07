class Moviedb::CLI 
  
  def call 
    puts "What would you like to search for?"
    input = gets.chomp 
    Moviedb::API.new.fetch(input)
  end 
end 
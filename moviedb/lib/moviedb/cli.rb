class Moviedb::CLI 
  
  def call 
    start 
  end 
  
  def start
    input = ""
    unless input == 'exit'
      list_options
      input = gets.strip.downcase
      @api = API.new(input)
      if input == 'exit'
        exit_message
      elsif input == 'all' || input.to_i.between?(1890, 2019)
        @api.fetch
        list_movies(input)
        menu
      else
        wrong_input
        start
      end
    end
  end
  
  def list_options
    puts "Enter a year as an integer to see the best-selling films of that year."
    puts "Enter 'all' to see the best-selling films of all time."
    puts "Enter 'exit' to end the program."
  end
  
end 
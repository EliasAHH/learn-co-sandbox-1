class Moviedb::API 
  
  def fetch(tvshow)
    key = "2ca8c5ce77b6ae56746eebc245c26e0a"
    url = "https://api.themoviedb.org/3/search/movie?api_key=#{key}&query=#{tvshow}"
    response = HTTParty.get(url)
    
    
  
end 
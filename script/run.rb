require 'json'
require 'open-uri'

data = JSON.parse(
  open('https://api.github.com/users/nicklegr/repos').read
  )

data.each do |e|
  clone_url = e['clone_url']
  system("milk add #{clone_url}")  
end

system("milk web --host=0.0.0.0 --no-browser")

require 'json'
require 'open-uri'

# @todo multiple users
# @todo manually add repos by setting.yaml

def github_urls
  github_user = ENV['GITHUB_USER'] || 'ongaeshi'

  data = JSON.parse(
    open("https://api.github.com/users/#{github_user}/repos").read
    )

  data.map do |e|
    e['clone_url']
  end
end

github_urls.each do |e|
  system("milk add #{e}")
end

system("milk web --host=0.0.0.0 --no-browser")

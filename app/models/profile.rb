class Profile
  def initialize
    @profile_info = HTTParty.get("https://api.github.com/users/jonathanparrish",
          :headers => {
            "Authorization" => "token #{ENV['GITHUB_TOKEN']}",
            "User-Agent" => "jonathanparrish"})
    @repository_info = HTTParty.get("https://api.github.com/users/jonathanparrish/repos",
          :headers => {
            "Authorization" => "token #{ENV['GITHUB_TOKEN']}",
            "User-Agent" => "jonathanparrish"})
  end

  def repos
    @repository_info

  end

end

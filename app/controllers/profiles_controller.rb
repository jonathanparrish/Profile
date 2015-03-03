class ProfilesController < ApplicationController

  def index
    def initialize
      @profile_info = HTTParty.get("https://api.github.com/users/jonathanparrish",
            :headers => {
              "Authorization" => "token #{ENV['GITHUB_TOKEN']}",
              "User-Agent" => "jonathanparrish"})["avatar_url"]
      @repository_info = HTTParty.get("https://api.github.com/users/jonathanparrish/repos",
            :headers => {
              "Authorization" => "token #{ENV['GITHUB_TOKEN']}",
              "User-Agent" => "jonathanparrish"})
    end

    def repos
      @repository_info

    end


  end


  # def index
  #   url = "https://api.github.com/users/jonathanparrish"
  #   @picture = HTTParty.get(url, login_info)["avatar_url"]
  #   repo_url = "https://api.github.com/users/jonathanparrish/repos"
  #   @response = HTTParty.get(repo_url, login_info)
  #   @repos = HTTParty.get(repo_url, login_info)[0]["name"]["updated_at"]
  #
  # end
  #
  # private def login_info
  #   {:headers => {
  #     "Authorization" => "token #{ENV['GITHUB_TOKEN']}",
  #     "User-Agent" => "jonathanparrish"}}
  # end
end

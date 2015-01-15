require "sinatra"
require "httparty"

get '/login'  do
  '<a href="https://ssl.reddit.com/api/v1/authorize?client_id=CLIENT_ID&response_type=code&state=fjr98ryg78s9hfdisfauh89e7hf&redirect_uri=http%3A%2F%2Flocalhost%3A4567%2Fcallback&duration=permanent&scope=identity">Login</a>'
end

get '/callback' do
  if params["code"]

    response = HTTParty.post(
      "https://www.reddit.com/api/v1/access_token",
      body: {
        grant_type: "authorization_code",
        code: params["code"],
        redirect_uri: "http://localhost:4567/callback"
      },
      basic_auth: {
        username: "CLIENT_ID",
        password: "CLIENT_SECRET"
      }
    )

    api_response = HTTParty.get(
      "https://oauth.reddit.com/api/v1/me",
      headers: {
        "Authorization" => "#{response["token_type"]} #{response["access_token"]}",
        "User-Agent" => "reddit_reader_wdi7/1.0 by fluffyjack"
      }
    )

    puts response
    puts api_response
  end
end







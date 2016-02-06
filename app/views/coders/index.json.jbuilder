json.array!(@coders) do |coder|
  json.extract! coder, :id, :name, :twitter_handle, :facebook_username, :github_username
  json.url coder_url(coder, format: :json)
end

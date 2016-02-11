require 'slack'

Slack.configure do |config|
  config.token = ENV['SLACK_TOKEN']
end

$slack_client = Slack::Client.new token: ENV['SLACK_TOKEN']

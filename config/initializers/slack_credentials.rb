require 'slack'

Slack.configure do |config|
  config.token = 'xoxp-5186493494-17723172612-20660303509-a908b26010'
end

$slack_client = Slack::Client.new token: 'xoxp-5186493494-17723172612-20660303509-a908b26010'

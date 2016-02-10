# require 'linkedin'
#
# $linkedin_client = LinkedIn::Client.new('788koaibfmxqsv', 'p1ncxeVjb06pEqih')
#
# request_token = $linkedin_client.request_token({}, scope: "r_basicprofile")
#
# request_token.authorize_url #=> "https://api.linkedin.com/uas/oauth/authorize?oauth_token=<generated_token>"
#
# rtoken = request_token.token
# rsecret = request_token.secret
# # pin = 61258
#
# p rtoken
#
# $linkedin_client.authorize_from_request(rtoken, rsecret, pin)
#
# $linkedin_client.authorize_from_access("OU812", "8675309")

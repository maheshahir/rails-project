require 'rest-client'
require 'json'
class UsersController < ApplicationController
  def login
  	
  end
  def api_call
  	oauth_access_token = "EAACEdEose0cBALI1r2sbwc2yIIu8ZBCo8pFZANSoAf8ZAPxmZClTdJeq7wntrV688mDkWMBaNjeC4CJhbijmYSxHvAvOjlg5ZAthKTbQTBXMb7n24tMfZBHHd0VGlpdIa7dLP0BuGx9Sg2TXFKEI8yEjftyZCl0jLV1xhIP5IkuOwZDZD"
  	rest = "https://graph.facebook.com/v2.8/me?fields=friends%7Btagged_places%2Cpicture%2Cabout%7D&access_token=#{oauth_access_token}"
  	resp = RestClient.get rest
  	ares = JSON.parse(resp)
  	@res = ares
  end
end

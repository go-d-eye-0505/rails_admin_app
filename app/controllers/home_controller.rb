require 'json'
require 'net/https'
require "uri"

class HomeController < ApplicationController
  def index
    connection = Faraday.new(url: 'http://rails_api_app-web-1:3000/')
    response = connection.get '/users'
    p @users = JSON.parse(response.body)
  end
end

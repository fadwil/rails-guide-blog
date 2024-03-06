class WelcomeController < ApplicationController
  def index
    cookies.encrypted[:greeting] = 'Hello there!'
  end
end
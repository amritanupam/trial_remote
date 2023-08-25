class HomeController < ApplicationController
  def index
    @joke = HTTParty.get('https://api.chucknorris.io/jokes/random')['value']
    respond_to do |format|
      format.html
      format.js
    end
  end
end
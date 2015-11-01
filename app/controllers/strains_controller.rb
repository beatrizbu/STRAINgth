class StrainsController < ApplicationController

  def index

  end

  def show
    puts params[:id]
    url = "http://api.leoqz.me/api/strains?symptom=" + params[:id]
    response = HTTParty.get(url)
    json_data = JSON.parse(response.body)
    @strains = json_data["data"]
  end

  def plant
    url = "http://api.leoqz.me/api/strain/" + params[:ucpc]
    response = HTTParty.get(url)
    json_data = JSON.parse(response.body)
    @strains = json_data["data"]
  end
end

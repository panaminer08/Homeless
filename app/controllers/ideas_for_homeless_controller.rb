class IdeasForHomelessController < ApplicationController
  def index
    @shelters = HTTParty.get('https://data.cityofnewyork.us/api/views/5t4n-d72c/rows.json?accessType=DOWNLOAD')
  end

  def create
    @ideas_for_homeless = IdeasForHomeless.create(ideas_for_homeless_params)
    @ideas_for_homeless.save
    redirect_to ideas_for_homeless_new@ideas_for_homeless
  end

  def show
  end

  def new
    @ideas_for_homeless = IdeasForHomeless.new
    @ideas_for_homelesses = IdeasForHomeless.all
    @youth = HTTParty.get('https://data.cityofnewyork.us/api/views/ujsc-un6m/rows.json?accessType=DOWNLOAD') 
    @homeless = HTTParty.get('http://api.nytimes.com/svc/search/v2/articlesearch.json?q=homeless&api-key=62a97a6fc47346ecba1eae7c69ca64f4')
  end

  def update
  end

  def delete
  end

  private

  def ideas_for_homeless_params
  params.require(:ideas_for_homeless).permit(:ideas)
  end
end

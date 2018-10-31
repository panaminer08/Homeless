class GivingsController < ApplicationController
  def index
    @giving = Giving.all
  end

  def new
    @giving = Giving.new 
  end

  def create
    @giving = Giving.create(giving_params)
    redirect_to givings_show_path
  end

  def show
    @give = HTTParty.get('https://data.cityofnewyork.us/api/views/bmxf-3rd4/rows.json?accessType=DOWNLOAD')
    @giving = Giving.all
  end

  def update
  end

  def delete
  end

  def edit
  end

  private

  def giving_params
    params.require(:giving).permit(:contribution_shelter, :contributions)
    end
end

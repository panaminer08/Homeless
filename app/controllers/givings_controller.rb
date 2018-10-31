class GivingsController < ApplicationController
  def index
  end

  def create
    @giving = Giving.create(giving_params)
    @giving.save
    redirect_to giving_new_path(@giving)
  end

  def new
    @giving = Giving.new
    @giving = Giving.all
    @give = HTTParty.get('https://data.cityofnewyork.us/api/views/bmxf-3rd4/rows.json?accessType=DOWNLOAD')
  end

  def show
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

class ScramblesController < ApplicationController
	def create
		@country = Country.find(params[:country_id])
		@scramble = @country.scrambles.create(params[:scramble])
		redirect_to country_path (@country)
	end
	
	def show_country
    @scramble = Scramble.find_by_code(params[:code].upcase)
    @country = Country.find(@scramble.country_id)
    redirect_to country_path (@country)
  end

	def destroy
		@country = Country.find(params[:country_id])
		@scramble = @country.scrambles.find(params[:id])
		@scramble.destroy
		redirect_to country_path (@country)
	end
end

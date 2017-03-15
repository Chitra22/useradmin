class DetailsController < ApplicationController
	binding.pry
  layout "details_layout"
 def new
  end
  def create
  	binding.pry
  end
  def update
  	@detail = Detail.new(detail_param)
  	if @detail.save
  	end
    end
  def set_detail
  	@detail = Detail.find(params[:id])
  end
  def detail_param
  	binding.pry
      params.require(:detail).permit(:name, :dob, :address ,:user_id , :number , :gender)
   end
end

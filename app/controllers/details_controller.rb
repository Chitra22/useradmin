class DetailsController < ApplicationController
  layout "details_layout"
 def new
 			@user = current_user
 end
  def create
		@user = current_user
 	  	@detail = Detail.new(detail_param)
  	  	respond_to do |format|
      if @detail.save
      	 format.html { redirect_to root_path, notice: 'Information Successfully updated' }
       	 # format.js
      end
      end
  end
  def update
  	@detail = Detail.new(detail_param)
  	if @detail.save
  	end
    end
  
  def detail_param
      params.require(:detail).permit(:name, :dob, :address ,:user_id , :number , :gender)
   end
   def show
    @detail = Detail.find_by_user_id(params[:id])
    if @detail == nil
      redirect_to new_detail_url
    end
   end
end

class SpreadsController < ApplicationController
	before_filter :get_parent 

	def new
		@spread = @parent.spreads.build
	end

	def create
		@spread = @parent.spreads.build(params[:spread])

		if @spread.save
			redirect_to event_path(@spread.event), :notice => "Thank you for spreading"
		else
			render :new
		end
	end




	protected 


	def get_parent 
		@parent = Event.find_by_id(params[:event_id]) if params[:event_id]
		@parent = Spread.find_by_id(params[:spread_id]) if params[:spread_id]

		redirect_to root_path unless defined?(@parent)
	end

end

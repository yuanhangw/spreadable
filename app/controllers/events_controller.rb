class EventsController < ApplicationController

	def index
		@events = Event.all
	end

	def new
		@event = Event.new
	end

	def show
		@event = Event.find(params[:id])
	end

	def create
		@event = Event.new(params[:event])

		if @event.save
			redirect_to events_path, :notice => "you event has been posted successfully"
		else
			render :action => :new
		end
	end

	def destroy
		event = Event.find(params[:id])
		event.destroy
	    redirect_to events_path
	end

end

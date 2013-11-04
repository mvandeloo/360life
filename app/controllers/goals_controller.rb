class GoalsController < ApplicationController

	def new
   	@goal = Goal.new
	end

	def create
    @goal = Goal.new
      
	    if @goall.save
	      	redirect_to @wheel
	    else
	    	flash.now[:error] = @wheel.errors.full_messages.inspect
	    	render action 'new'
	    end
	end

end

class GoalsController < ApplicationController

before_filter :auth_user, only: [:index] 
 

	def index
      # @goals = Goal.all
    	@goals = current_user.wheel.goals
  	end

  	def new
  		@section = Section.find params[:section_id]
   		@goal = Goal.new
	end

	def create
		  @section = Section.find params[:section_id]
    	@goal = Goal.new(params[:goal].permit(:title, :due_date, :notes, :priority))
      @goal.section = @section
    	@goal.wheel_id = session[:wheel_id]
      # @goal.user = current_user
      
      # if @goal.save
      # else
      #   redirect_to goals_path
      #           render 'new'
      # end

	    if @goal.save
	      render js: "window.location = '#{ goals_path }'"
	    else
	    	render 'new'
	    end
	end

	def edit
    	@goal = Goal.find(params[:id])
  	end

  	def update
    	@goal = Goal.find(params[:id])
    	puts @goal
    	if @goal.update_attributes(params[:goal].permit(:title, :due_date, :notes, :priority))
      		flash[:notice] = 'The goal was saved successfully.'
      		redirect_to :action=>'index'
    	else
      		flash[:notice] = 'The goal could not be saved.'
      		redirect_to :action=>'edit'
    	end
  end


  def destroy

    @goal = Goal.find(params[:id])
    @goal.destroy
    flash[:notice] = 'Your goal was destroyed'
    redirect_to goals_path
  end

  private

  def auth_user
    redirect_to new_user_registration_path unless user_signed_in?
  end

end

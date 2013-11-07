class GoalsController < ApplicationController

  before_filter :save_goal, only: [:index]
  helper_method :resource

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

      if current_user && current_user.wheel
    	  @goal.wheel =  current_user.wheel
      else
        @goal.wheel_id = session[:wheel_id]
      end
      # @goal.user = current_user
      
      # if @goal.save
      # else
      #   redirect_to goals_path
      #           render 'new'
      # end

	    if @goal.save
        if user_signed_in?
  	      render js: "window.location = '#{ goals_path }'"
        else
          session[:goal_id] = @goal.id
          render 'users/registrations/new'
        end
	    else
	    	render 'new'
	    end
	end

	def edit
      @section = Section.find params[:section_id]
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

  def resource
    User.new
  end

  def save_goal
    if current_user
      if session[:wheel_id]
        current_user.wheel = Wheel.find session[:wheel_id]
        session[:wheel_id] = nil
      end

      if session[:goal_id]
        current_user.wheel.goals << Goal.find(session[:goal_id])
        session[:goal_id] = nil
      end
    else
      redirect_to new_user_session_path
    end
  end

end

class GoalsController < ApplicationController

	def index
    	@goals = Goal.all
  	end

  	def new
  		@section = Section.find params[:section_id]
   		@goal = Goal.new
	end

	def create
		@section = Section.find params[:section_id]
    	@goal = Goal.new(params[:goal].permit(:title, :due_date, :notes, :priority))
    	@goal.section = @section
      
      if params[:due_date].nil? || params[:title].nil?
        flash[:error] = 'Please fill out Due Date and answers'
        render 'new', :remote => true
      else @goal.save!
        redirect_to goals_path
      end

	    # if @goal.save!
	    #   	redirect_to goals_path
	    # else
	    # 	flash.now[:error] = @goal.errors.full_messages.inspect
	    # 	render 'new'
	    # end
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
    end

end

class WheelsController < ApplicationController

  layout 'application'
  
	def index
	end

	def new
    @page = 'questionnaire'
   	@wheel = Wheel.new
    session[:wheel_id] = nil
    # @wheel.build_answers
	end
	

	def show
    @wheel = Wheel.find params[:id]
    @selected_answer_values = @wheel.answers.map(&:answer_value)
    @selected_answer_id = @wheel.answers.map(&:id)
    @selected_answers = @wheel.answers
  end

  def create
    @wheel = Wheel.new

    # raise params[:answer].inspect
    if params[:answer].nil? || (params[:answer].length < Question.all.count)
      flash[:error] = 'Please fill out all answers below.'
      render json: { status: 'failure' }
    else
      # @user = User.find(params[:user_id])

      @answer_ids = params[:answer].values


      @answer_ids.each do |answer_id|
        @wheel.answers << Answer.find(answer_id)
      end

      # @user = User.find(params[:user_id])
      # @wheel = @user.wheels.build params[:wheel].permit(:answer_id)
      
      if @wheel.save
        if current_user
          current_user.wheel = @wheel
        else
          session[:wheel_id] = @wheel.id
        end

        render json: { status: 'success', url: wheel_path(@wheel) }
      else
        flash.now[:error] = @wheel.errors.full_messages.inspect
        render 'new'
      end
    end
  end


end






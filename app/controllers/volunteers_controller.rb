class VolunteersController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :catch_not_found
before_action :set_volunteer, only: [:show, :edit, :update, :destroy]

  def index
    @volunteers = Volunteer.all
  end


  def show
   set_volunteer
  end

def new
  @volunteer = Volunteer.new
end


def create
  @volunteer = Volunteer.new(volunteer_params)
    if @volunteer.save
     flash.notice = 'You have been added to our volunteer database!'
     redirect_to @volunteer
   else
     flash.now.alert = @volunteer.errors.full_messages.to_sentence
     render :new
   end
end

def edit
set_volunteer
end


def update
set_volunteer
  if @volunteer.update(volunteer_params)
    flash.notice = 'Volunteer profile was successfully updated'
    redirect_to @volunteer
  else
    flash.now.alert = @volunteer.errors.full_messages.to_sentence
    render :edit
  end
end

def destroy
 set_volunteer
 @volunteer.destroy
 flash.notice = 'Volunteer profile was deleted successfully'
 redirect_to volunteers_path
end



private

      def volunteer_params
      params.require(:volunteer).permit(:park_id, :first_name, :last_name, :email, :hours, :days )
      end


      def set_volunteer
        @volunteer = Volunteer.find(params[:id])
      end


      def catch_not_found(e)
        Rails.logger.debug("We had a not found exception.")
        flash.alert = e.to_s
        redirect_to volunteers_path
       end

end

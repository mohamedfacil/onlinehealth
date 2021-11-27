class DoctorseeksController < ApplicationController
    def index
        @patient = Patient.find(params[:patient_id])
        @doctorappoint = Doctorappoint.find(params[:doctorappoint_id])
        @doctor =  Doctor.find(session[:doctor_id])  
    end
    def create
        @doctorseek = Doctorseek.new(doctorseek_params)
            if @doctorseek.save
                flash[:success] = "/doctor appoint successfully created"
                redirect_to root_path
            else
            flash[:error] = "Something went wrong"
            render 'index'
            end
    end

    private
    def doctorseek_params
      params.permit( :notes, :doctor_name, :patient_id,:doctor_id,:doctorappoint_id)
    end
end

class DoctorappointsController < ApplicationController
    def index
        @patient = Patient.find(session[:patient_id])
        @doctor =  Doctor.find(params[:doctor_id])  
    end
    def create
        @doctorappoint = Doctorappoint.new(doctorappoint_params)
            if @doctorappoint.save
                flash[:success] = "/doctor appoint successfully created"
                redirect_to root_path
            else
            flash[:error] = "Something went wrong"
            render 'index'
            end
    end
    # notes:params[:notes],doctor_id:params[:doctor_id],patient_id:params[:patient_id]
    private
    def doctorappoint_params
      params.permit( :notes, :patient_id,:doctor_id, :patientName)
    end

end

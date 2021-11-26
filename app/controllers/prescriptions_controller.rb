class PrescriptionsController < ApplicationController
    def index
        @patient = Patient.find(params[:patient_id])
        @doctor =  Doctor.find(session[:doctor_id])  
    end
    def create
        @prescription = Prescription.new(prescription_params)
            if @prescription.save
                flash[:success] = "/doctor appoint successfully created"
                redirect_to root_path
            else
            flash[:error] = "Something went wrong"
            render 'index'
            end
    end
    # notes:params[:notes],doctor_id:params[:doctor_id],patient_id:params[:patient_id]
    private
    def prescription_params
      params.permit( :notes, :patient_id,:doctor_id, :doctorName,:image)
    end
end

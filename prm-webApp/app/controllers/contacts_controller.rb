class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  def index
    @contacts = Contact.all
  end

  def show
    @patient = Patient.find(params[:patient_id])
    @contact = @patient.contact
  end

  def new
    @patient = Patient.find(params[:patient_id])
    @contact = @patient.build_contact
  end

  def edit
    @patient = Patient.find(params[:patient_id])
    @contact = @patient.contact(params[:id])
  end

  def create
    @patient = Patient.find(params[:patient_id])
    @contact = @patient.build_contact(contact_params)
    # @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        format.html { redirect_to patient_path(@patient), notice: 'Contact was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    @patient = Patient.find(params[:patient_id])
    respond_to do |format|
      if @contact.update(contact_params)
        format.html { redirect_to patient_path(@patient), notice: 'Contact was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @patient = Patient.find(params[:patient_id])
    @contact.destroy
    respond_to do |format|
      format.html { redirect_to contacts_url, notice: 'Contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_contact
      @contact = Contact.find(params[:id])
    end

    def contact_params
      params.require(:contact).permit(:mobilephone, :homephone, :street, :city, :state, :country, :zipcode, :patient_id)
    end
end

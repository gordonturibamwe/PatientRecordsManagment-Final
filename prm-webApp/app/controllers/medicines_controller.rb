class MedicinesController < ApplicationController
  before_action :set_medicine, only: [:show, :edit, :update, :destroy]

  def index
    @summary = Summary.find_by(params[:id])
    @medicines = @summary.medicines
  end

  def show
    @summary = Summary.find_by(params[:id])
    @medicine = @summary.medicines
  end

  def new
    @patient = Patient.find_by(params[:id])
    @summary = Summary.find_by(params[:id])
    @medicine = @summary.medicines.build
  end

  def edit
  end

  def create
    @summary = Summary.find_by(params[:id])
    @medicine = @summary.medicines.build(medicine_params)

    respond_to do |format|
      if @medicine.save
        format.html { redirect_to root_path, notice: 'Medicine was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    @summary = Summary.find_by(params[:id])
    respond_to do |format|
      if @medicine.update(medicine_params)
        format.html { redirect_to root_path, notice: 'Medicine was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @patient = Summary.find(params[:patient_id])
    @summary = Summary.find_by(params[:id])
    @medicine.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Medicine was successfully destroyed.' }
    end
  end

  private
    def set_medicine
      @medicine = Medicine.find(params[:id])
    end

    def medicine_params
      params.require(:medicine).permit(:name, :gram, :prescription, :refill, :summary_id)
    end
end

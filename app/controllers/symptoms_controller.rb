class SymptomsController < ApplicationController
  before_action :set_symptom, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @symptoms = Symptom.all
    respond_with(@symptoms)
  end

  def show
    respond_with(@symptom)
  end

  def new
    @symptom = Symptom.new
    respond_with(@symptom)
  end

  def edit
  end

  def create
    @symptom = Symptom.new(symptom_params)
    @symptom.save
    respond_with(@symptom)
  end

  def update
    @symptom.update(symptom_params)
    respond_with(@symptom)
  end

  def destroy
    @symptom.destroy
    respond_with(@symptom)
  end

  private
    def set_symptom
      @symptom = Symptom.find(params[:id])
    end

    def symptom_params
      params.require(:symptom).permit(:title)
    end
end

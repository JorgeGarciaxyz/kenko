# frozen_string_literal: true

class DiseasesController < ApplicationController
  def new
    @disease = Disease.new
  end

  def index
    @diseases = current_user.diseases
  end

  def create
    disease = Disease.new(disease_params)

    if disease.save
      redirect_to edit_disease_path(disease.id)
    else
      raise
    end
  end

  def edit
    @disease = Disease.find_by!(user: current_user, id: params[:id])
  end

  private

  def disease_params
    params.require(:disease).permit(:name).merge(user: current_user)
  end
end

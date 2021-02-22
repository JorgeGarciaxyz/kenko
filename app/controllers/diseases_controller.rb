# frozen_string_literal: true

class DiseasesController < ApplicationController
  def new
    @disease = Disease.new
  end

  def index
    @diseases = current_user.diseases
  end

  def create; end
end

# frozen_string_literal: true

class InterventionsController < ApplicationController
  before_action :set_intervention, only: %i[show update destroy]

  # GET /interventions
  def index
    @q = Intervention.ransack(params[:q])
    @pagy, @interventions = pagy(@q.result)

    render json: @interventions
  end

  # GET /interventions/1
  def show
    render json: @intervention
  end

  # POST /interventions
  def create
    @intervention = Intervention.new(intervention_params)

    if @intervention.save
      render json: @intervention, status: :created, location: @intervention
    else
      render json: @intervention.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /interventions/1
  def update
    if @intervention.update(intervention_params)
      render json: @intervention
    else
      render json: @intervention.errors, status: :unprocessable_entity
    end
  end

  # DELETE /interventions/1
  def destroy
    @intervention.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_intervention
    @intervention = Intervention.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def intervention_params
    params.require(:intervention).permit(
      :started_at,
      :address,
      :zipcode,
      :city,
      :total_panels,
      :type_panel,
      :ref_panel,
      customer_attributes: %i[
        id
        name
        email
        phone
      ],
      company_attributes: %i[
        id
        name
        siren
      ]
    )
  end
end
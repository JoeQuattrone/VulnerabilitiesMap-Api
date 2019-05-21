class HackersController < ApplicationController
  before_action :set_hacker, only: [:show, :update, :destroy]

  # GET /hackers
  def index
    @hackers = Hacker.all

    render json: @hackers
  end

  # GET /hackers/1
  def show
    render json: @hacker
  end

  # POST /hackers
  def create
    @hacker = Hacker.new(hacker_params)

    if @hacker.save
      render json: @hacker, status: :created, location: @hacker
    else
      render json: @hacker.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hackers/1
  def update
    if @hacker.update(hacker_params)
      render json: @hacker
    else
      render json: @hacker.errors, status: :unprocessable_entity
    end
  end

  # DELETE /hackers/1
  def destroy
    @hacker.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hacker
      @hacker = Hacker.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def hacker_params
      params.fetch(:hacker, {})
    end
end

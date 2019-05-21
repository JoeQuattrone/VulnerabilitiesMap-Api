class IpAddressesController < ApplicationController
  before_action :set_ip_address, only: [:show, :update, :destroy]

  # GET /ip_addresses
  def index
    @ip_addresses = IpAddress.all

    render json: @ip_addresses
  end

  # GET /ip_addresses/1
  def show
    render json: @ip_address
  end

  # POST /ip_addresses
  def create
    @ip_address = IpAddress.new(ip_address_params)

    if @ip_address.save
      render json: @ip_address, status: :created, location: @ip_address
    else
      render json: @ip_address.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ip_addresses/1
  def update
    if @ip_address.update(ip_address_params)
      render json: @ip_address
    else
      render json: @ip_address.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ip_addresses/1
  def destroy
    @ip_address.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ip_address
      @ip_address = IpAddress.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ip_address_params
      params.fetch(:ip_address, {})
    end
end

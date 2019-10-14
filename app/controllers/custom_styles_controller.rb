# frozen_string_literal: true

class CustomStylesController < ApplicationController
  before_action :set_custom_style, only: %i[show edit update destroy]

  # GET /custom_styles
  def index
    @custom_styles = CustomStyle.all
  end

  # GET /custom_styles/1
  def show; end

  # GET /custom_styles/new
  def new
    @custom_style = CustomStyle.new
  end

  # GET /custom_styles/1/edit
  def edit; end

  # POST /custom_styles
  def create
    @custom_style = CustomStyle.new(custom_style_params)

    if @custom_style.save
      redirect_to @custom_style, notice: 'Custom style was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /custom_styles/1
  def update
    if @custom_style.update(custom_style_params)
      redirect_to @custom_style, notice: 'Custom style was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /custom_styles/1
  def destroy
    @custom_style.destroy
    redirect_to custom_styles_url, notice: 'Custom style was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_custom_style
    @custom_style = CustomStyle.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def custom_style_params
    params.require(:custom_style).permit(:text)
  end
end

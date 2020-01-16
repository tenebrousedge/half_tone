# frozen_string_literal: true

class ComicsController < ApplicationController
  before_action :set_comic, only: %i[show edit update destroy]

  # load browser js
  def browse; end

  # GET /comics
  def index
    @comics = Comic.all
  end

  # GET /comics/1
  def show; end

  # GET /comics/new
  def new
    @comic = Comic.new
  end

  # GET /comics/1/edit
  def edit; end

  # POST /comics
  def create
    @comic = Comic.new(comic_params)

    if @comic.save
      redirect_to @comic, notice: 'Comic was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /comics/1
  def update
    if @comic.update(comic_params)
      redirect_to @comic, notice: 'Comic was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /comics/1
  def destroy
    @comic.destroy
    redirect_to comics_url, notice: 'Comic was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_comic
    @comic = Comic.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def comic_params
    params.require(:comic).permit(:title, :subtitle, :published_at, :author_id)
  end
end

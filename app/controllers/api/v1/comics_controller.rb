# frozen_string_literal: true

# main API controller
class Api::V1::ComicsController < Api::V1::ApiController

  def index
    render jsonapi: Comics.all, include: [:author]
  end

  def show
    comic = Comic.find(params[:id])
    render jsonapi: post, include: [
      :books,
      :pages,
      :background,
      :custom_styles,
      :author
    ]
end

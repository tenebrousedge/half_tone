class Api::V1::PagesController < ApplicationController
  def show
    page = Page.find(params[:id])
    render jsonapi: page, include: [
      :comic,
      :custom_styles,
      :background,
      book: [:custom_styles, :background, comic: %i[custom_styles background]]
    ]
  end
end

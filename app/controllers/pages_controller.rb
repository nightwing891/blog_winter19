class PagesController < ApplicationController
  def index
    @pages = Page.all
    # render index.html.erb
  end

  def show
    @page = Page.find(params[:id])
    # render show.html.erb
  end

  def new
  end

  def edit
  end
end

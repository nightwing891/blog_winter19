class PagesController < ApplicationController
  # Notescontroller
  def index
    @pages = Page.all
    # @notes = Note.all
    # render index.html.erb
  end

  def show
    @page = Page.find(params[:id])
    # @note = note.find(params[:id])
    # render show.html.erb
  end

  def new
    @page = Page.new
     # render new.html.erb
  end

  def create
    @page = Page.new(pages_params)

    if @page.save
      redirect_to pages_path
    else
      render :new
    end
  end

  def edit
  end

  private
    def pages_params
      # { page: { title: 'adsf', author: '', body: '' }}
      params.require(:page).permit(:title, :author, :body)
    end
end

class GenresController < ApplicationController
  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def create
    genre = Genre.create(reqs)
    redirect_to genre_path(genre)
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    genre = Genre.find(params[:id])
    genre.update(reqs)
    redirect_to genre_path(genre)
  end

  private

  def reqs
    params.require(:genre).permit(:name)
  end
end

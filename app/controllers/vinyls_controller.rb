class VinylsController < ApplicationController
  def index
    @vinyls = Vinyl.all.order(created_at: :desc)
  end

  def show
    @vinyl = Vinyl.find(params[:id])
  end

  def new
  @vinyl = Vinyl.new
  end

  def create

    @vinyl = Vinyl.new(vinyl_params)
    if @vinyl.save
      redirect_to vinyls_path, notice: "レコードを投稿しました！"
    else
      render :new
    end
  end

  def edit
    @vinyl = Vinyl.find(params[:id])
  end

  def update
    @vinyl = Vinyl.find(params[:id])
    if @vinyl.update(vinyl_params)
      redirect_to vinyl_path(@vinyl), notice: "レコードを更新しました"
    else
      render :edit
    end
  end

  def destroy
    @vinyl = Vinyl.find_by(params[:id])
    @vinyl.destroy
      redirect_to vinyls_path, notice: "レコードを削除しました"
  end

  private

  def vinyl_params
    params.require(:vinyl).permit(:title, :artist, :review, :image)
  end
end
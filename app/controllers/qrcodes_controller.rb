class QrcodesController < ApplicationController
  def index
    @qrcodes = Qrcode.all
  end

  def show
    @qrcodes = Qrcode.find(params[:id])
  end

  def new
    @qrcode = Qrcode.new
  end

  def create
    @qrcode = Qrcode.new(qrcode_params)

    if @qrcode.save
      flash[:notice] = "QR Code was created succsefully"
      redirect_to @qrcode
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @qrcode = Qrcode.find(params[:id])
  end

  def update
    @qrcode = Qrcode.find(params[:id])

    if @qrcode.update(qrcode_params)
      redirect_to @qrcode
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @qrcode = Qrcode.find(params[:id])
    @qrcode.destroy

    redirect_to root_path, status: :see_other
  end

  private
  def qrcode_params
    params.require(:qrcode).permit(:title, :body)
  end
end

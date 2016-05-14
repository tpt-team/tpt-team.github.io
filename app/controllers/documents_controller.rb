class DocumentsController < ApplicationController

  expose(:document)
  expose(:documents)# {|default| default.where(confirmed: true).page(params[:page]).per(8)}

  def create
    document.save
  end

  def update
    create
  end

  def destroy
    document.destroy
  end

end

class DocumentsController < ApplicationController

  expose(:document, attributes: :document_params)
  expose(:documents)# {|default| default.where(confirmed: true).page(params[:page]).per(8)}
  expose(:faculty)
  expose(:university)

  def create
    if document.save
      document.update_attributes(faculty_id: faculty.id, user_id: current_user.id)
      redirect_to university_faculty_path(params[:university_id], faculty)
      flash[:success] = 'Документ загружен и находится в обработке'
    else
      redirect_to university_faculty_path(params[:university_id], faculty)
    end
  end

  def update
    create
  end

  def destroy
    document.destroy
  end

  def download
    current_user.update_attributes(user_points: current_user.user_points - document.points)
    document.increment
    redirect_to document.document.url(:original, false)

  end

  private

  def document_params
    params.require(:document).permit!
  end

end

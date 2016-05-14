class DocumentsController < ApplicationController

  expose(:document, attributes: :document_params)
  expose(:documents)# {|default| default.where(confirmed: true).page(params[:page]).per(8)}
  expose(:faculty)

  def create
    if document.save
      document.update_attributes(faculty_id: faculty.id, user_id: current_user.id)
      redirect_to university_faculty_path(params[:university_id], faculty)
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

  private

  def document_params
    params.require(:document).permit!
  end

end

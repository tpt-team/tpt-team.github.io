class FacultiesController < ApplicationController

  expose(:faculty)
  expose(:faculties)# {|default| default.page(params[:page]).per(8)}

  def create
    faculty.save
  end

  def update
    create
  end

  def destroy
    faculty.destroy
  end

end

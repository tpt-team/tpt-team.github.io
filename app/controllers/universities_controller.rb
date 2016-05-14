class UniversitiesController < ApplicationController

  expose(:university)
  expose(:universities) {|default| default.page(params[:page]).per(8)}

  def create
    university.save
  end

  def update
    create
  end

  def destroy
    university.destroy
  end

end

ActiveAdmin.register Document do
  permit_params :title, :description, :points, :confirmed, :category_id, :user_id, :faculty_id

  controller do
    def update
      update! do |format|
        @doc = Document.find(params[:id])
        @user = User.find(@doc.user_id)
        @user.update_attributes(user_points: @user.user_points + @doc.points.to_i)
        format.html { redirect_to admin_documents_path }
      end
    end
  end
end
